.class final Lcom/android/server/input/InputManagerService$VibratorToken;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorToken"
.end annotation


# instance fields
.field public final mDeviceId:I

.field public final mToken:Landroid/os/IBinder;

.field public final mTokenValue:I

.field public mVibrating:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/os/IBinder;I)V
    .locals 0
    .parameter
    .parameter "deviceId"
    .parameter "token"
    .parameter "tokenValue"

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1653
    iput p2, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mDeviceId:I

    .line 1654
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mToken:Landroid/os/IBinder;

    .line 1655
    iput p4, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->mTokenValue:I

    .line 1656
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$VibratorToken;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputManagerService;->onVibratorTokenDied(Lcom/android/server/input/InputManagerService$VibratorToken;)V

    .line 1664
    return-void
.end method
