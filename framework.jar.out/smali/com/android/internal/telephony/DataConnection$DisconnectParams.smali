.class public Lcom/android/internal/telephony/DataConnection$DisconnectParams;
.super Ljava/lang/Object;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DisconnectParams"
.end annotation


# instance fields
.field public onCompletedMsg:Landroid/os/Message;

.field public reason:Ljava/lang/String;

.field public tag:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 104
    return-void
.end method
