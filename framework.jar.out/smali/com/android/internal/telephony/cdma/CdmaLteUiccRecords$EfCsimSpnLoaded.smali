.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x20

    const/4 v8, 0x0

    .line 111
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    .line 112
    .local v0, data:[B
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$400()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSIM_SPN="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    aget-byte v6, v0, v8

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, v10, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    .line 118
    aget-byte v2, v0, v7

    .line 119
    .local v2, encoding:I
    const/4 v6, 0x2

    aget-byte v3, v0, v6

    .line 120
    .local v3, language:I
    new-array v5, v9, [B

    .line 121
    .local v5, spnData:[B
    const/4 v7, 0x3

    array-length v6, v0

    if-ge v6, v9, :cond_3

    array-length v6, v0

    :goto_1
    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v4, 0x0

    .local v4, numBytes:I
    :goto_2
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 125
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_4

    .line 128
    :cond_1
    if-nez v4, :cond_5

    .line 129
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const-string v7, ""

    #setter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$502(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    :goto_3
    return-void

    .end local v2           #encoding:I
    .end local v3           #language:I
    .end local v4           #numBytes:I
    .end local v5           #spnData:[B
    :cond_2
    move v6, v8

    .line 116
    goto :goto_0

    .restart local v2       #encoding:I
    .restart local v3       #language:I
    .restart local v5       #spnData:[B
    :cond_3
    move v6, v9

    .line 121
    goto :goto_1

    .line 124
    .restart local v4       #numBytes:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 133
    :cond_5
    packed-switch v2, :pswitch_data_0

    .line 147
    :pswitch_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const-string v7, "SPN encoding not supported"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$900()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1000(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 153
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spnCondition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    iget-boolean v8, v8, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    .line 154
    :cond_7
    const-string v6, "gsm.sim.operator.alpha"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #getter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1200(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 136
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "ISO-8859-1"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$602(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spn decode error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 141
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    const/4 v7, 0x0

    mul-int/lit8 v8, v4, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$702(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 144
    :pswitch_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "utf-16"

    invoke-direct {v7, v5, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #setter for: Lcom/android/internal/telephony/IccRecords;->spn:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$802(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
