.class public Landroid/util/GateMessage;
.super Ljava/lang/Object;
.source "GateMessage.java"


# static fields
.field private static final GATE_MSG_ENABLED:Z = true

.field private static final SOCKET_NAME:Ljava/lang/String; = "gatemsg"

.field private static final TAG:Ljava/lang/String; = "GATE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGateEnabled()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 66
    return-void
.end method
