# Application Usage Guide  

Welcome to the **Lip-Syncing Web App**! This guide will help you set up the environment and achieve optimal results while using the application.  

---

## Step 1: Environment Setup  

Before using the application, you need to set up the environment in Google Colab. This involves:  
- **Installing required libraries**  
- **Downloading the necessary models**  

Make sure the setup is completed before proceeding to the next steps.  

---

## Step 2: Upload Media  

After setting up the environment, upload the media files (video and audio) for lip-syncing.  

### Recommended Parameters for Uploading  

#### **Video**  
- Supported formats: **MP4** or **MPEG** (no other formats are accepted).  
- Recommended resolution: **720p** (other resolutions may also work).  
- The model performs best when:  
  - The video contains **only one face** (multi-faced videos are supported but may yield less accurate results).  
  - The face is **frontal** (side postures or excessive face movements may lead to errors).  
  - The face is **not recorded too close to the camera**, as this may result in poor or no sync.  
- **Video duration**: Ensure it matches the audio duration for synchronization.  

#### **Audio**  
- Supported formats: **MP3** or **MPEG** (no other formats are accepted).  
- Ensure the **audio duration matches the video duration** for synchronization.  
- Works best with **English speech**, but other languages are also supported.  

---

## Step 3: Lip-Syncing Page  

Once the media files are uploaded:  
- You will be redirected to the **Lip-Syncing Page**.  
- The paths for the uploaded video and audio will be automatically filled in the input fields.  
- If the paths do not appear automatically, manually paste them into the input fields.  

---

## Step 4: Model Selection  

You can choose between two models for lip-syncing:  

| **Model**       | **Pros**                                                    | **Cons**                                                              |
|------------------|------------------------------------------------------------|-----------------------------------------------------------------------|
| **Wav2Lip**     | - Highly accurate lip-syncing                               | - Rarely produces missing teeth (uncommon)                           |
|                 | - Keeps the mouth closed when there is no sound             |                                                                       |
| **Wav2Lip_GAN** | - Visually appealing results                                | - Struggles to mask original lip movements when there is no sound     |
|                 | - Retains the original expressions of the speaker naturally |                                                                       |
	


## Step 5: Adjusting Parameters  

You can fine-tune the following parameters to improve results:  

### **Padding**  
This controls how many pixels are added or removed from the face crop in each direction.  

| **Value** | **Example** | **Effect**                                     |  
|-----------|-------------|------------------------------------------------|  
| **U**     | U = -5      | Removes 5 pixels from the top of the face      |  
| **D**     | D = 10      | Adds 10 pixels to the bottom of the face       |  
| **L**     | L = 0       | No change to the left side of the face         |  
| **R**     | R = 15      | Adds 15 pixels to the right side of the face   |  

- **Recommended Values**: `UDLR = 0 10 0 0`  
- Padding helps remove hard edges like the chin. Adjust these values to optimize the size and position of the mouth for your clip.  

---

### **Nosmooth**  
- When enabled:  
  - The face is cropped independently for each frame.  
  - **Best for fast movements or sudden cuts** in the video.  
  - May cause twitching if the face is at an unusual angle.  
- When disabled:  
  - The face position is blended across five frames.  
  - **Best for slow movements** or faces at unusual angles.  
  - May lead to offset mouth positioning in fast-moving frames.  

---
### **Output Result** 
- If the user is not satified with the output video of the model, he can revisit lipsyncing page to reset the parameters for better results

---

## Notes for Best Results  
- Ensure the uploaded video and audio are well-aligned in duration.  
- Experiment with parameters like padding and nosmooth for customized outputs.  

We hope this guide makes your experience seamless and productive!  
