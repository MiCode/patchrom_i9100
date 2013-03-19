.class public Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "DefaultLayoutSelectCommand.java"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter "activityContext"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDefaultLayoutPopup()V

    .line 33
    return-void
.end method
