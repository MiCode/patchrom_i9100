.class Lcom/android/internal/telephony/cat/SendSSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field ssString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ssString"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 84
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Z)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "ssString"
    .parameter "hasIcon"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cat/SendSSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/cat/SendSSParams;->setHasIconTag(Z)V

    .line 89
    return-void
.end method
