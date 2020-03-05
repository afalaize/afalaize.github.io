.. title: Analog audio circuits
.. slug: analogcircuits
.. date: 2016-06-21 01:06:53 UTC+02:00
.. tags: mathjax, PHS, PyPHS, Electronic, Graphs
.. category: Article
.. link:
.. description:
.. type: text
.. author: Antoine Falaize

**Article** Antoine Falaize and Thomas Hélie. `Passive guaranteed simulation of analog audio circuits: A port-hamiltonian approach <https://hal.archives-ouvertes.fr/hal-01390501/>`_. Applied Science, Applied Acoustics, special issue Audio Signal Processing, 2016.
`pdf <https://hal.archives-ouvertes.fr/hal-01390501/document>`__
`bibtex <https://hal.archives-ouvertes.fr/hal-01390501/bibtex>`__

.. figure:: /images/analogcircuits/BJT_amp_schematic.png
		:width: 300px
		:scale: 100 %
		:align: center

.. TEASER_END: Read more

Comparison of numerical methods
--------------------------------

In the paper, we propose a discret-gradient based numerical scheme to preserve the passivity property of port-Hamilotnian systems at time discretization.
A detailed comparison of this method with classical ODE time-stepper with simulation code is available `here </posts/comparisonnumschemes/>`_.

Diode clipper
--------------


.. figure:: /images/analogcircuits/Diode_clipper_schematic.png
		:width: 200px
		:scale: 100 %
		:align: center
		:alt: Circuit schematic


.. figure:: /images/analogcircuits/Diode_clipper_signal.png
		:width: 400px
		:scale: 100 %
		:align: center
		:alt: Output voltage: Simulation of the diode clipper for a linearly increasing sinusoidal input signal with LTSpice and PyPHS.


BJT audio amplifer
--------------------

.. figure:: /images/analogcircuits/BJT_amp_schematic.png
		:width: 300px
		:scale: 100 %
		:align: center

		Circuit schematic

.. figure:: /images/analogcircuits/BJT_amp_signal.png
		:width: 400px
		:scale: 100 %
		:align: center

		Output voltage:
		Simulation of the diode clipper for a linearly increasing sinusoidal input signal with LTSpice and PyPHS.

.. figure:: /images/analogcircuits/bjt_PHS.png
		:width: 400px
		:scale: 100 %
		:align: center

		Output voltage (frequency domain):
		PyPHS simulation of the diode clipper for a sinusoidal input signal linearly increasing the frequency between 20Hz and 20kHZ.

.. figure:: /images/analogcircuits/bjt_LTspice.png
		:width: 400px
		:scale: 100 %
		:align: center

		Output voltage (frequency domain):
		LTSpice simulation of the diode clipper for a sinusoidal input signal linearly increasing the frequency between 20Hz and 20kHZ.


CryBaby wah pedal
------------------

Original short guitar sample
****************************


.. raw:: html

	<audio controls>
		<source src="/sounds/analogcircuits/Chunky_Riff.mp3">
	</audio>

CryBaby output
***************

The *wah* parameter (potentiometer coefficient) is continuously varying according to a sinusoid signal with DC offset 0.5, amplitude 1 and frequency 1Hz.

.. raw:: html

	<audio controls>
		<source src="/sounds/analogcircuits/PHS_wah.mp3">
	</audio>
