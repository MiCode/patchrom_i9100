.class Lcom/sec/android/facedetection/FaceDetectionService$2$1;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/facedetection/FaceDetectionService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;


# direct methods
.method constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$1;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$1;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/facedetection/FaceDetectionService$2$1;->this$1:Lcom/sec/android/facedetection/FaceDetectionService$2;

    iget-object v0, v0, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sec/android/facedetection/FaceDetectionService;->access$500(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 638
    :cond_0
    return-void
.end method
