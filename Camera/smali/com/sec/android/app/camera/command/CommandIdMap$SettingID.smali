.class public Lcom/sec/android/app/camera/command/CommandIdMap$SettingID;
.super Ljava/lang/Object;
.source "CommandIdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/command/CommandIdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingID"
.end annotation


# instance fields
.field public mCommandId:I

.field public mMenuId:I

.field public mModeId:I

.field final synthetic this$0:Lcom/sec/android/app/camera/command/CommandIdMap;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/command/CommandIdMap;III)V
    .locals 0
    .parameter
    .parameter "menuId"
    .parameter "modeId"
    .parameter "commandId"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/sec/android/app/camera/command/CommandIdMap$SettingID;->this$0:Lcom/sec/android/app/camera/command/CommandIdMap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput p2, p0, Lcom/sec/android/app/camera/command/CommandIdMap$SettingID;->mMenuId:I

    .line 524
    iput p3, p0, Lcom/sec/android/app/camera/command/CommandIdMap$SettingID;->mModeId:I

    .line 525
    iput p4, p0, Lcom/sec/android/app/camera/command/CommandIdMap$SettingID;->mCommandId:I

    .line 526
    return-void
.end method
