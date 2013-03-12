.class Lcom/sec/android/facedetection/FaceDetectionService$2;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/facedetection/FaceDetectionService;->showErrorPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/facedetection/FaceDetectionService;


# direct methods
.method constructor <init>(Lcom/sec/android/facedetection/FaceDetectionService;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$2$1;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2$1;-><init>(Lcom/sec/android/facedetection/FaceDetectionService$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-k -t -n -z -d -o /data/log/dumpstate_faceservice_error_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "yyyyMMdd_kkmmss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/sec/android/facedetection/FaceDetectionService$2;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    #getter for: Lcom/sec/android/facedetection/FaceDetectionService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/facedetection/FaceDetectionService;->access$600(Lcom/sec/android/facedetection/FaceDetectionService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/facedetection/FaceDetectionService$2$2;

    invoke-direct {v2, p0}, Lcom/sec/android/facedetection/FaceDetectionService$2$2;-><init>(Lcom/sec/android/facedetection/FaceDetectionService$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FaceDetectionService"

    const-string v2, "SOMETHING GOES WRONG!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
