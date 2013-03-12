.class public Lcom/android/internal/telephony/cat/CatEnvelopeMessage;
.super Ljava/lang/Object;
.source "CatEnvelopeMessage.java"


# instance fields
.field additionalInfo:[B

.field destinationID:I

.field event:I

.field sourceID:I


# direct methods
.method public constructor <init>(III[B)V
    .locals 1
    .parameter "event"
    .parameter "sourceID"
    .parameter "destinationID"
    .parameter "additionalInfo"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    .line 23
    iput v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    .line 27
    iput p1, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    .line 28
    iput p2, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    .line 29
    iput p3, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    .line 30
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    .line 31
    return-void
.end method
