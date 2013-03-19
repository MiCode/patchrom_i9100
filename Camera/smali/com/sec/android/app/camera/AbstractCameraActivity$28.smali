.class Lcom/sec/android/app/camera/AbstractCameraActivity$28;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$28;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1814
    const/4 v0, 0x1

    .line 1816
    .local v0, mstate:I
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$28;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/CameraSettings;->androidBeamController(ZI)V

    .line 1817
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$28;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setAutoShareShotMode(I)V

    .line 1818
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$28;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    .line 1819
    return-void
.end method
