# Image Deraining — Project Overview

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](#)  

![Before/After preview](assets/result.png)

---

## Objective
**To remove rain streaks and haze from images** using multiple approaches (filtering, CNNs, recurrent networks, and GANs), evaluate them quantitatively (PSNR / SSIM) and qualitatively, and provide reproducible code and sample data.

---

## What is image de-raining?
Image de-raining is the process of removing rain streaks (and associated haze) from images to recover a clean scene. It improves visual quality and aids downstream tasks like segmentation, detection, and tracking.

---

## Models — Summary

| Model | One-line description | Paper | Code |
|---|---|---:|---:|
| **Basic filtering** | Classical median/guided filter baseline for quick denoising. | [Paper / ref](<BASIC_FILTER_PAPER_LINK>) | [Code](./Basic Filtering) |
| **U-Net** | Encoder–decoder CNN that learns a direct rainy→clean mapping. | [U-Net paper](<UNET_PAPER_LINK>) | [Code](./U-Net) |
| **DDN** | Deep Detail Network that separates base and detail layers for better rain removal. | [DDN paper](<DDN_PAPER_LINK>) | [Code](./Simplified DDN) |
| **RESCAN (modified)** | Recurrent multi-stage network with attention modules — best quantitative performance here. | [RESCAN paper](<RESCAN_PAPER_LINK>) | [Code](./Modified RESCAN) |
| **Pix2Pix (GAN)** | Conditional GAN performing image-to-image translation (visually sharp results). | [Pix2Pix](<PIX2PIX_PAPER_LINK>) | [Code](./Pix2Pix GAN) |


---

## Quantitative comparison 
**Metrics used:** PSNR (dB) and SSIM (0–1). 

Here is the performance chart for psnr value:

![PSNR Comparison](assets/PSNR_comparision.png)

Here is the performance chart for psnr value:

![SSIM Comparison](assets/SSIM_comparision.png)



