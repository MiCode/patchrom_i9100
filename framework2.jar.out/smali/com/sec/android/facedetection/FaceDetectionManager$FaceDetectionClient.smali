.class Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;
.super Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;
.source "FaceDetectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/facedetection/FaceDetectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaceDetectionClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionManager;


# direct methods
.method constructor <init>(Lcom/sec/android/facedetection/FaceDetectionManager;)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionManager$FaceDetectionClient;->this$0:Lcom/sec/android/facedetection/FaceDetectionManager;

    invoke-direct {p0}, Lcom/sec/android/facedetection/IFaceDetectionClient$Stub;-><init>()V

    .line 103
    const-string v0, "FaceDetectionManager"

    const-string v1, "New FaceDetectionClient"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method
