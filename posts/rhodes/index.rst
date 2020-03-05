.. title: Simulation of the Fender Rhodes
.. slug: rhodes
.. date: 2015-10-13 12:38:29 UTC+02:00
.. tags: mathjax, Audio, PHS, Fender Rhodes, Virtual Instrument
.. category: Article
.. link:
.. description:
.. type: text
.. author: Antoine Falaize

**Article** Antoine Falaize and Thomas Hélie. `Passive simulation of the nonlinear port-hamiltonian modeling of a rhodes piano <https://hal.archives-ouvertes.fr/hal-01470949/>`_. Journal of Sound and Vibration, 2016.
`pdf <https://hal.archives-ouvertes.fr/hal-01390534/file/JSV_Rhodes_manuscript_round_2.pdf>`__
`bibtex <https://hal.archives-ouvertes.fr/hal-01470949/bibtex>`__

.. raw:: html

    <a title="By CasinoKat (Own work) [GFDL (http://www.gnu.org/copyleft/fdl.html), CC-BY-SA-3.0 (http://creativecommons.org/licenses/by-sa/3.0/) or CC BY-SA 2.5-2.0-1.0 (http://creativecommons.org/licenses/by-sa/2.5-2.0-1.0)], via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File%3AFender_Rhodes.jpg">
        <img width="300" alt="Fender Rhodes" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Fender_Rhodes.jpg/512px-Fender_Rhodes.jpg"/>
    </a>

.. TEASER_END: Read more

Parts under consideration
----------------------------

.. figure:: /images/rhodes/rhodes6.jpg
   :width: 500px
   :scale: 100 %
   :align: center

The complete system is quite complex (38 components mentioned for each note in figure below). The resonator is an asymmetric tuning fork (elements 7 to 13 and 19 in the figure), where one of the prong is call the tine (element 13) and is struck by the hammer (elements 14 and 15), the other prong is called the tone bar (element 11). The constant magnetic induction field due to the pickup magnet in free air is modulated by the movement of the (magnetically conducting) tine, which results in a change of the magnetic flux in the coil, that generates an electromotive force (voltage) from Faraday's law of induction.

.. figure:: /images/rhodes/rhodes_parts.png
   :width: 500px
   :scale: 100 %
   :align: center

This paper focuses on the part depicted in the figure below, from the hammer (excited by a force) to the pickup (producing an output voltage).

.. figure:: /images/rhodes/rhodes_parts_sound_production.png
   :width: 500px
   :scale: 100 %
   :align: center

In the paper, this part is simplified and modeled by three multi-physical elements (see figure below):

* a nonlinear hysteretic hammer :math:`\mathcal{H}`, with adjustable material characteristics and geometry,

* a linear damped cantilever beam :math:`\mathcal{B}`, which can be tuned according to the shape and material properties,

* a nonlinear pickup :math:`\mathcal{P}`, the transverse and longitudinal position of which can be adjusted compared to the free-end beam extremity, which is connected to a RC analog filter (not represented in the figure below).


The technical details about the modeling of each part and the construction of the complete model are given in the paper.

.. figure:: /images/rhodes/Schematic_new.png
   :width: 400px
   :scale: 100 %
   :align: center

Simulation code
----------------

The resulting simulation code (Python 2.7) is available `here </codes/code_rhodes_falaize.zip>`_ (the script to be executed is 'MAIN.py'). All the results presented in the paper and in the sequel of this web page were obtained from this code. Notice the tuning of physical parameters may differ from the parameters specified in the paper, which correspond to the case note A440, with contant damping coefficient.

Comparison with measurements
----------------------------

Here we compare the simulated output (labeled `simulation`) to measurements provided by `UVI <http://www.uvi.net/fr/>`_ (labeled `measure`) for note A4 (440Hz) with increasing force applied to the hammer.

.. figure:: /images/rhodes/ALLspectrum100.png
   :width: 600px
   :scale: 100 %
   :align: center

.. figure:: /images/rhodes/test1.png
   :width: 600px
   :scale: 100 %
   :align: center

.. figure:: /images/rhodes/test4.png
   :width: 600px
   :scale: 100 %
   :align: center

.. figure:: /images/rhodes/test7.png
   :width: 600px
   :scale: 100 %
   :align: center

Audio examples
---------------

Below we give some audio results obtained from the aforementioned modeling and numerical simulation. Each example is made of successive hammer hits with increasing force amplitude. Results are given for A1 (55Hz), A2 (110Hz), A3 (220Hz) and A4 (440Hz).

55Hz
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/rhodes_test_55.mp3">
		</audio>

110Hz
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/rhodes_test_110.mp3">
		</audio>

220Hz
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/rhodes_test_220.mp3">
		</audio>

440Hz
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/rhodes_test_440.mp3">
		</audio>

Positioning the pickup
-----------------------
Below are audio examples that show the effects of the positioning of the tine with respect to the pickup.


----------------


Increasing the distance between the pickup and the beam.

.. figure:: /images/rhodes/tinePosition2.png
   :width: 400px
   :scale: 100 %
   :align: right

.. figure:: /images/rhodes/lh.png
  :width: 400px
  :scale: 100 %
  :align: right

:math:`l_p=0.5mm`

.. raw:: html

	<audio controls>
		<source src="/sounds/rhodes/lp_0.0005.mp3">
	</audio> (Too close)

:math:`l_p=1.5mm`

.. raw:: html

	<audio controls>
		<source src="/sounds/rhodes/lp_0.0015.mp3">
	</audio> (Ideal)

:math:`l_p=3mm`

.. raw:: html

	<audio controls>
		<source src="/sounds/rhodes/lp_0.003.mp3">
	</audio> (Low volume)

----------------

Displacing the pickup from the beam's axis.

.. figure:: /images/rhodes/tinePosition1.png
   :width: 400px
   :scale: 100 %
   :align: right


.. figure:: /images/rhodes/dlh.png
  :width: 400px
  :scale: 100 %
  :align: right


:math:`l_\delta=0mm`
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/dlp_0.mp3">
		</audio> (Pure overtone)

:math:`l_\delta=0.5mm`
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/dlp0.0005.mp3">
		</audio> (Ideal)

:math:`l_\delta=1.5mm`
	.. raw:: html

		<audio controls>
			<source src="/sounds/rhodes/dlp0.0015.mp3">
		</audio> (Pure Tone)
