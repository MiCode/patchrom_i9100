.class public Lcom/samsung/ScreenCapture/ScreenCaptureNative;
.super Ljava/lang/Object;
.source "ScreenCaptureNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenCaptureNative"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "samsung_psi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 56
    const-string v0, "SCREENCAPTURE_ENGINE"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callbackFromNative(IILjava/lang/Object;)V
    .locals 1
    .parameter "msg"
    .parameter "len"
    .parameter "obj"

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 46
    instance-of v0, p2, [B

    if-eqz v0, :cond_0

    .line 47
    check-cast p2, [B

    .end local p2
    check-cast p2, [B

    .line 51
    :cond_0
    return-void
.end method

.method public static native getFrame()[B
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    sput-object p0, Lcom/samsung/ScreenCapture/ScreenCaptureNative;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static native startCapture(III)Z
.end method

.method public static native stopCapture()Z
.end method
