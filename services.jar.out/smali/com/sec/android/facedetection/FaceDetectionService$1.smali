.class Lcom/sec/android/facedetection/FaceDetectionService$1;
.super Ljava/lang/Object;
.source "FaceDetectionService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/facedetection/FaceDetectionService;-><init>(Landroid/content/Context;)V
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
    .line 317
    iput-object p1, p0, Lcom/sec/android/facedetection/FaceDetectionService$1;->this$0:Lcom/sec/android/facedetection/FaceDetectionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 319
    const/4 v0, 0x1

    return v0
.end method
