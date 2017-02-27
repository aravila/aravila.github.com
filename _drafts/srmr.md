---
layout: page
permalink: /srmr
---

  <header class="post-header">
    <!--<h1 class="post-title">Notes on SRMR</h1>-->
  </header>
  <br><br>
<p>

Speech-to-reverberation modulation energy ratio (SRMR) is an objective quality metric developed for reverberant and dereverberated speech. The evaluation of the metric is performed against the so-called MOS (mean opinion square). The MOS is normally obtained by averaging a set of rates given by subjective normal-hearing listeners after evaluating a number of speech files. <br><br>

<b>Computation of SRMR</b> <br><br>

The first step comprises filtering the input signal, <i>x</i>(n), with a 23-channel gammatone filterbank to emulate the cochlear processing. The filter has center frequencies that ranges from 125 Hz up to 8 kHz with bandwiths defined by equivalent retangular bandwith (ERB). This will lead to an output signal <i>x</i><sub>j</sub>(n), with j = 1, 2, ..., 23.  <br><br>

<b>Temporal envelop, windowing, FFT</b> <br><br>

Temporal envelops, <i>e</i>(n), are extracted from each output signal, <i>x'</i><sub>j</sub>(n), through Hilbert Transform. The temporal envelop is segmented by a 256-ms window, at every 64-ms. This will create <i>e</i><sub>j</sub>(m, n), where m is the number of frames for each temporal envelop. The fourier transform is then applied to <i>e</i><sub>j</sub>(m, n) in order to obtain the modulation spectral energy for each critical band, |(<i>e</i><sub>j</sub>(m, n)<sup>2</sup>)|.

<br><br>

<b>Modulation filterbank</b> <br><br>

Modulation filterbank will select frequencies in the modulation domain by gathering the modulation frequencies into 8 groups, k = 1, ..., 8 with the centre frequencies logarithmically spaced between 4 - 128 Hz. As output, the energy for 23 acoustic frequencies, m frames (depend on the duration of the signal) and 8 modulation frequencies.

<br><br>

<b>SRMR ratio</b> <br><br>

The SRMR value is the ratio of the average energy of the first four modulation bands (k = 1-4, around 4-20 Hz) to the average of the last four modulation bands (k = 5-8, around 20-128 Hz).

<br><br>

















