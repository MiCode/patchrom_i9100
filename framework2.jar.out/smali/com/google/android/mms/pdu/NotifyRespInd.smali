.class public Lcom/google/android/mms/pdu/NotifyRespInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1
    .parameter "mmsVersion"
    .parameter "transactionId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 40
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMessageType(I)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMmsVersion(I)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 43
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/NotifyRespInd;->setStatus(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 1
    .parameter "mmsVersion"
    .parameter "transactionId"
    .parameter "status"
    .parameter "reportAlloed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 51
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMessageType(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;->setMmsVersion(I)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/NotifyRespInd;->setTransactionId([B)V

    .line 54
    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/NotifyRespInd;->setStatus(I)V

    .line 55
    invoke-virtual {p0, p4}, Lcom/google/android/mms/pdu/NotifyRespInd;->setReportAllowed(I)V

    .line 56
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 86
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 97
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 126
    return-void
.end method
