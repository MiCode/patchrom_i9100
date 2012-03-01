.class public Lcom/android/phone/PickImageFromGallery;
.super Landroid/app/Activity;
.source "PickImageFromGallery.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static myHandler:Landroid/os/Handler;


# instance fields
.field private selectImageFromGallery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/phone/PickImageFromGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    return-void
.end method

.method protected static registerForImageGalleryResponse(Landroid/os/Handler;)V
    .locals 0
    .parameter "mHandlerforImageGallery"

    .prologue
    .line 93
    sput-object p0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method protected static unregisterForImageGalleryResponse()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 102
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 68
    iget-boolean v0, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v0, :cond_1

    .line 69
    if-ne p2, v1, :cond_0

    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 71
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/PickImageFromGallery;->finish()V

    .line 82
    return-void

    .line 76
    :cond_1
    if-ne p2, v1, :cond_0

    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 78
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 86
    const-string v0, "Ignore onConfigurationChanged for PickImageFromGallery"

    invoke-virtual {p0, v0}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/high16 v5, 0x800

    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/phone/PickImageFromGallery;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "imageSelected"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    .line 40
    iget-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v2, :cond_0

    .line 41
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "select Image from the gallery "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "PickImageFromFallery : OnCreate()"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, mImgIntent:Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 46
    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "onlyJpg"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    const-string v2, "senderIsVideoCall"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, v0, v4}, Lcom/android/phone/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    .end local v0           #mImgIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "select Video from the gallery "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, mVideoIntent:Landroid/content/Intent;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "only3gp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const-string v2, "senderIsVideoCall"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v1, v4}, Lcom/android/phone/PickImageFromGallery;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
