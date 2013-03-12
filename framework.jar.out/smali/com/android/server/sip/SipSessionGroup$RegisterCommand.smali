.class Lcom/android/server/sip/SipSessionGroup$RegisterCommand;
.super Ljava/util/EventObject;
.source "SipSessionGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipSessionGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterCommand"
.end annotation


# instance fields
.field private mDuration:I

.field final synthetic this$0:Lcom/android/server/sip/SipSessionGroup;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipSessionGroup;I)V
    .locals 0
    .parameter
    .parameter "duration"

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->this$0:Lcom/android/server/sip/SipSessionGroup;

    .line 1756
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 1757
    iput p2, p0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->mDuration:I

    .line 1758
    return-void
.end method


# virtual methods
.method public getDuration()I
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lcom/android/server/sip/SipSessionGroup$RegisterCommand;->mDuration:I

    return v0
.end method
