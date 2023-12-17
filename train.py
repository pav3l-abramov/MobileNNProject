# -*- coding: utf-8 -*-

from ultralytics import YOLO

model_yolo = YOLO("yolov8s.pt")
model_yolo.train(data="custom.yaml", device="cpu", epochs=20, batch=20, imgsz=640,task="detect",mode="train", project="results")
model_yolo.export(format="torchscript", optimize=True)