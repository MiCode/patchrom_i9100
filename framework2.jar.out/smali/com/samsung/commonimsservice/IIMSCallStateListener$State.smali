.class public Lcom/samsung/commonimsservice/IIMSCallStateListener$State;
.super Ljava/lang/Object;
.source "IIMSCallStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/commonimsservice/IIMSCallStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final ALREADY_IN_CALL:I = 0x8

.field public static final ANSWERING:I = 0x2

.field public static final CANCELING:I = 0x5

.field public static final IN_CALL:I = 0x6

.field public static final NOT_DEFINED:I = 0x65

.field public static final OUTGOING_CALL:I = 0x3

.field public static final PINGING:I = 0x7

.field public static final READY_TO_CALL:I = 0x0

.field public static final RINGING:I = 0x1

.field public static final RING_BACK:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 448
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 408
    packed-switch p0, :pswitch_data_0

    .line 442
    const-string v0, "NOT_DEFINED"

    :goto_0
    return-object v0

    .line 410
    :pswitch_0
    const-string v0, "READY_TO_CALL"

    goto :goto_0

    .line 414
    :pswitch_1
    const-string v0, "INCOMING_CALL"

    goto :goto_0

    .line 418
    :pswitch_2
    const-string v0, "ANSWERING"

    goto :goto_0

    .line 422
    :pswitch_3
    const-string v0, "OUTGOING_CALL"

    goto :goto_0

    .line 426
    :pswitch_4
    const-string v0, "RING_BACK"

    goto :goto_0

    .line 430
    :pswitch_5
    const-string v0, "CANCELING"

    goto :goto_0

    .line 434
    :pswitch_6
    const-string v0, "IN_CALL"

    goto :goto_0

    .line 438
    :pswitch_7
    const-string v0, "PINGING"

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
