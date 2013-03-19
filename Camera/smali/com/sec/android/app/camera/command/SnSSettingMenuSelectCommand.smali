.class public Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "SnSSettingMenuSelectCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnsMenuSelectCommand"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mSns:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V
    .locals 1
    .parameter "context"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "res"
    .parameter "commandid"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 40
    sparse-switch p5, :sswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 42
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    .line 45
    :sswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    .line 48
    :sswitch_2
    const/16 v0, 0x29

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    .line 51
    :sswitch_3
    const/16 v0, 0x2b

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    .line 54
    :sswitch_4
    const/16 v0, 0x2c

    iput v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    goto :goto_0

    .line 40
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3a -> :sswitch_4
        0xfa0 -> :sswitch_0
        0xfa1 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "SnsMenuSelectCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - enter - mSns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget v0, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 67
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_1

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 71
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mSns:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 76
    :cond_2
    const-string v0, "SnsMenuSelectCommand--execute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZOrder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/command/MenuCommand;->mZOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
