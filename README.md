# Hole-Ice-LaTeX

This repository contains the LaTeX document of [**The Effect of Hole Ice on the Propagation and Detection of Light in IceCube**](https://github.com/fiedl/hole-ice-latex/raw/master/build/diplomarbeit.pdf), 2018.

## Summary

IceCube is a neutrino observatory at Earth's South Pole that uses glacial ice as detector medium where particles from neutrino interactions produce light as they move through the ice, which then is detected by an array of photo detectors deployed within the ice.

Aiming to improve detector calibration and thereby the observatory's precision, this study introduces methods to simulate the propagation of light through the *hole ice*, which is the refrozen water in the drill holes that were needed to deploy the detector modules, adding several more calibration parameters to ice models.

The validity of the method is supported by unit tests, a series of cross checks, and by comparing simulation results to results gained from other studies.

As examples of application, this study implements the simulation of one or several hole-ice cylinders with different properties such as position, size, scattering length, and absorption length, the simulation of shadowing cables, and a calibration method using IceCube's light-emitting diode flasher calibration system.

Whereas light propagating through the bulk ice is largely unaffected, the detector modules and the flasher system located within the hole ice are effectively shielded, because a fraction of the light is absorbed and another fraction reflected by the hole ice. For detector modules displaced within the hole ice, the magnitude of this effect depends on the azimuthal direction, which is in agreement with calibration data.

Simulating a light-absorbing cable next to the detector modules instead of a hole-ice cylinder can account for some of the observed effects, but not all of them, making a hole ice different from the bulk ice necessary to explain calibration data.

Hole-ice effects on the detection of light by IceCube's detector modules can be approximated using modified angular-acceptance criteria for the simulated detector modules.

For studies involving events with many photons and many different detector modules such as high-energy muon-track signature events, this approximation method is suitable, especially when considering simulation performance. The approximations currently in use correspond to simulated hole-ice cylinders of about 30cm diameter and about 1m effective scattering length. To account for the effect of hole-ice models suggested by current studies, however, new approximation curves are required to replace the ones currently in use.

For events with less photon statistics involving only few detector modules, the direct hole-ice propagation simulation can reduce systematic uncertainties, which, however, need to be quantified by follow-up studies.

## Source Code and Scripts

Scripts, simulation setups, and resulting data:
https://github.com/fiedl/hole-ice-study

Source code of the propagation algorithm:
https://github.com/fiedl/clsim

## Author

2018, Sebastian Fiedlschuster