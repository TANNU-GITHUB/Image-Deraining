# Image Deraining — Project Overview

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](#)  

![Before/After preview](assets/overview_before_after.png)

---

## Objective
**To remove rain streaks and haze from images** using multiple approaches (filtering, CNNs, recurrent networks, and GANs), evaluate them quantitatively (PSNR / SSIM) and qualitatively, and provide reproducible code and sample data.

---

## What is image de-raining?
Image de-raining is the process of removing rain streaks (and associated haze) from images to recover a clean scene. It improves visual quality and aids downstream tasks like segmentation, detection, and tracking.

---

## Models — one-line summary + links
Each model has its own folder (e.g., `rescan/`) with code, `requirements.txt`, and images.

| Model | One-line description | Paper | Code |
|---|---|---:|---:|
| **Basic filtering** | Classical median/guided filter baseline for quick denoising. | [Paper / ref](<BASIC_FILTER_PAPER_LINK>) | [Code](./basic_filtering) |
| **U-Net** | Encoder–decoder CNN that learns a direct rainy→clean mapping. | [U-Net paper](<UNET_PAPER_LINK>) | [Code](./unet) |
| **DDN** | Deep Detail Network that separates base and detail layers for better rain removal. | [DDN paper](<DDN_PAPER_LINK>) | [Code](./ddn) |
| **RESCAN (modified)** | Recurrent multi-stage network with attention modules — best quantitative performance here. | [RESCAN paper](<RESCAN_PAPER_LINK>) | [Code](./rescan) |
| **Pix2Pix (GAN)** | Conditional GAN performing image-to-image translation (visually sharp results). | [Pix2Pix](<PIX2PIX_PAPER_LINK>) | [Code](./pix2pix) |

> Replace `<..._LINK>` placeholders with your actual paper / code URLs. The `Code` column links to the model folders inside this repo.

---

## Quantitative comparison 
**Metrics used:** PSNR (dB) and SSIM (0–1). Keep  at the repo root in this format:

Here is the performance chart for psnr value:

![PSNR Comparison](assets/PSNR_comparison.png)



