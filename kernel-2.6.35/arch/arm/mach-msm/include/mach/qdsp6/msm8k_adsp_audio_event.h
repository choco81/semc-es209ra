/* Copyright (c) 2009, Code Aurora Forum. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *     * Redistributions of source code must retain the above copyright
 *       notice, this list of conditions and the following disclaimer.
 *     * Redistributions in binary form must reproduce the above copyright
 *       notice, this list of conditions and the following disclaimer in the
 *       documentation and/or other materials provided with the distribution.
 *     * Neither the name of Code Aurora Forum nor
 *       the names of its contributors may be used to endorse or promote
 *       products derived from this software without specific prior written
 *       permission.
 *
 * Alternatively, provided that this notice is retained in full, this software
 * may be relicensed by the recipient under the terms of the GNU General Public
 * License version 2 ("GPL") and only version 2, in which case the provisions of
 * the GPL apply INSTEAD OF those given above.  If the recipient relicenses the
 * software under the GPL, then the identification text in the MODULE_LICENSE
 * macro must be changed to reflect "GPLv2" instead of "Dual BSD/GPL".  Once a
 * recipient changes the license terms to the GPL, subsequent recipients shall
 * not relicense under alternate licensing terms, including the BSD or dual
 * BSD/GPL terms.  In addition, the following license statement immediately
 * below and between the words START and END shall also then apply when this
 * software is relicensed under the GPL:
 *
 * START
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License version 2 and only version 2 as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
 * details.
 *
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 * END
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 */

#ifndef __ADSP_AUDIO_EVENT_H
#define __ADSP_AUDIO_EVENT_H


#include <mach/qdsp6/msm8k_adsp_audio_types.h>


/* All IOCTL commands generate an event with the IOCTL opcode as the */
/* event id after the IOCTL command has been executed. */



/* This event is generated after a media stream session is opened. */
#define ADSP_AUDIO_EVT_STATUS_OPEN				0x0108c0d6


/* This event is generated after a media stream  session is closed. */
#define ADSP_AUDIO_EVT_STATUS_CLOSE				0x0108c0d7


/* Asyncronous buffer consumption. This event is generated after a */
/* recived  buffer is consumed during rendering or filled during */
/* capture opeartion. */
#define ADSP_AUDIO_EVT_STATUS_BUF_DONE				0x0108c0d8


/* This event is generated when rendering operation is starving for */
/* data. In order to avoid audio loss at the end of a plauback, the */
/* client should wait for this event before issuing the close command. */
#define ADSP_AUDIO_EVT_STATUS_BUF_UNDERRUN			0x0108c0d9


/* This event is generated during capture operation when there are no */
/* buffers available to copy the captured audio data */
#define ADSP_AUDIO_EVT_STATUS_BUF_OVERFLOW			0x0108c0da



/* Event data payload definition */

struct adsp_audio_event_data {
	union {
		/* integer data */
		s32				ivalue;
		/* unsigned integer data */
		u32				uvalue;
		/* media data buffer */
		struct adsp_audio_data_buffer	buf_data;
		/* media session Time */
		s64				audio_time;
	};
} __attribute__ ((packed));



/* ADSP Audio event */

struct adsp_audio_event {
	/* Associated client data */
	struct adsp_audio_header	header;
	/* Stream/Control session handle */
	u32				handle;
	/* ID for the command/event */
	u32				event_id;
	/* Return status/error code */
	s32				status;
	/* Length of additional event data */
	u32				data_len;
	/* Returned data only present if */
	/* data_len > 0 */
	struct adsp_audio_event_data	event_data;
} __attribute__ ((packed));


/* Callback function type for clients to recieve events */
typedef void (*adsp_audio_event_cb_func)(struct adsp_audio_event *event,
						void *client_data);

struct adsp_audio_event_cb {
	adsp_audio_event_cb_func	callback;
	void				*client_data;
};


#endif


