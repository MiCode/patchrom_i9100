.class Lcom/android/internal/telephony/cat/SendSMSParams;
.super Lcom/android/internal/telephony/cat/DisplayTextParams;
.source "CommandParams.java"


# instance fields
.field Pdu:Ljava/lang/String;

.field SmscAddress:Ljava/lang/String;

.field textMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "Smscaddress"
    .parameter "Pdu"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cat/DisplayTextParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;)V

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    .line 138
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "Smscaddress"
    .parameter "Pdu"
    .parameter "hasIcon"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cat/SendSMSParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/cat/SendSMSParams;->setHasIconTag(Z)V

    .line 143
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 146
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/cat/SendSMSParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
