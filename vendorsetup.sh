# nuke
rm -rf hardware/qcom-caf/msm8998/display
rm -rf hardware/qcom-caf/msm8998/media
rm -rf hardware/qcom-caf/msm8998/audio

# clone
git clone -b 11 https://github.com/zaidkhan0997/vender_xiaomi_GoogleCameraMod.git vendor/xiaomi/GoogleCameraMod
git clone -b 11 https://github.com/zaidkhan0997/hardware_qcom-caf_display_msm8998.git hardware/qcom-caf/msm8998/display
git clone -b 11 https://github.com/zaidkhan0997/hardware_qcom-caf_media_msm8998.git hardware/qcom-caf/msm8998/media
git clone -b 11 https://github.com/zaidkhan0997/hardware_qcom-caf_audio_msm8998.git hardware/qcom-caf/msm8998/audio
