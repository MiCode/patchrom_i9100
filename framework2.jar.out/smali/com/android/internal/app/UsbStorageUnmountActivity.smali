.class public Lcom/android/internal/app/UsbStorageUnmountActivity;
.super Landroid/app/Activity;
.source "UsbStorageUnmountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbStorageUnmountActivity"

.field private static final localLOGD:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-string v1, "UsbStorageUnmountActivity"

    const-string v2, "onCreate!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.USB_STORAGE_UNMOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/UsbStorageUnmountter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/internal/app/UsbStorageUnmountActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/app/UsbStorageUnmountActivity;->finish()V

    .line 45
    return-void
.end method
