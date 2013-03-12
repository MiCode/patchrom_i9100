.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 304
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 305
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 306
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 314
    :goto_0
    return-object v4

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 314
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 282
    if-eqz p0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 284
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 285
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 286
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 288
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 297
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :goto_0
    return-object v4

    .line 290
    .restart local v1       #length:I
    .restart local v2       #rawValue:[B
    .restart local v3       #valueIndex:I
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 294
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 297
    .end local v1           #length:I
    .end local v2           #rawValue:[B
    .end local v3           #valueIndex:I
    :cond_1
    const-string v4, "Defualt Message"

    goto :goto_0
.end method

.method static retrieveBearerDescription(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDescription;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 710
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 711
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 713
    .local v2, length:I
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>()V

    .line 715
    .local v0, bearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :try_start_0
    aget-byte v7, v3, v4

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 716
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveBearerDescription: Bearer Type = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    packed-switch v7, :pswitch_data_0

    .line 761
    :pswitch_0
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type not Supported"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: BearerDescription is not among the five"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 773
    .end local v0           #bearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :goto_0
    return-object v0

    .line 719
    .end local v4           #valueIndex:I
    .restart local v0       #bearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;
    .restart local v5       #valueIndex:I
    :pswitch_1
    new-instance v7, Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/BearerCSD;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 720
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_1
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    .line 721
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_2
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    .line 722
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_3
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    .line 723
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 724
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 725
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = CSD"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 767
    :catch_0
    move-exception v1

    .line 768
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const-string v6, "ValueParser"

    const-string v7, "ResultException: retrieveBearerDescription"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 728
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_2
    :try_start_4
    new-instance v7, Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/BearerGPRS;-><init>()V

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 729
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_5
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    .line 730
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_6
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    .line 731
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_7
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    .line 732
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_8
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    .line 733
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :try_start_9
    aget-byte v8, v3, v5

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    .line 734
    iget-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :try_start_a
    aget-byte v8, v3, v4

    iput v8, v7, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    .line 735
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 736
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 737
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = GPRS"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 738
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 740
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_3
    const/4 v7, 0x3

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 741
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 742
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 743
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 744
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = Default"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 745
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 747
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_4
    const/16 v7, 0xb

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 748
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 749
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 750
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 751
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = BEARER_E_UTRAN"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 752
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 754
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :pswitch_5
    const/16 v7, 0x8

    iput-byte v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 755
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 756
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 757
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 758
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveBearerDescription: Bearer Type = BEARER_CDMA"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v4, v5

    .line 759
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_0

    .line 770
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_1
    move-exception v1

    move v4, v5

    .line 771
    .end local v5           #valueIndex:I
    .local v1, e:Ljava/lang/Exception;
    .restart local v4       #valueIndex:I
    :goto_2
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveBearerDescription: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 773
    goto/16 :goto_0

    .line 770
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 767
    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    :catch_3
    move-exception v1

    move v4, v5

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    goto/16 :goto_1

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 788
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 789
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 790
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveBufferSize: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :try_start_0
    aget-byte v7, v3, v6

    and-int/lit16 v1, v7, 0xff

    .line 793
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v5, v7, 0xff

    .line 794
    .local v5, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int v4, v7, v5

    .line 795
    .local v4, resultByte:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveBufferSize: buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 804
    .end local v1           #firstByte:I
    .end local v4           #resultByte:I
    .end local v5           #secondByte:I
    :goto_0
    return v4

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveBufferSize"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 801
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 802
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveBufferSize: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v4, -0x1

    goto :goto_0
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 974
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 975
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 977
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveChannelData : value Index , length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :try_start_0
    const-string v7, "ValueParser"

    const-string/jumbo v8, "retrieveChannelData: beginning Byte array copy"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    new-array v4, v2, [B

    .line 981
    .local v4, tempChannelData:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 982
    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v7, v3, v6

    aput-byte v7, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 981
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_0

    .line 985
    :cond_0
    :try_start_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveChannelData: tempChannelData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Byte Array Copy Complete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v6

    .line 993
    .end local v1           #i:I
    .end local v4           #tempChannelData:[B
    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    :goto_1
    return-object v4

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveChannelData"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 990
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 991
    .local v0, e:Ljava/lang/Exception;
    :goto_3
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveChannelData: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const/4 v4, 0x0

    goto :goto_1

    .line 990
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #valueIndex:I
    .restart local v1       #i:I
    .restart local v4       #tempChannelData:[B
    .restart local v6       #valueIndex:I
    :catch_2
    move-exception v0

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_3

    .line 987
    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    :catch_3
    move-exception v0

    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_2
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)B
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 949
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 950
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 951
    .local v1, length:I
    const-string v4, "ValueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieveChannelDataLength: valueIndex , Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 960
    :goto_0
    return v4

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ValueParser"

    const-string v5, " ResultException: retrieveChannelDataLength"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 957
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 958
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ValueParser"

    const-string v5, "Unknown ResultException in retrieveChannelDataLength: "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 47
    .local v0, cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 48
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 50
    .local v3, valueIndex:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 51
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 52
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 53
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 375
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 376
    .local v4, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 378
    .local v2, length:I
    if-eqz v2, :cond_1

    .line 379
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 380
    .local v0, dtmfString:[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 381
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #valueIndex:I
    .local v5, valueIndex:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 382
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 381
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_0

    :cond_0
    move v4, v5

    .line 386
    .end local v0           #dtmfString:[B
    .end local v1           #i:I
    .end local v5           #valueIndex:I
    .restart local v4       #valueIndex:I
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static retrieveDataDestinationAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .locals 13
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 848
    new-instance v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/DataDestinationAddress;-><init>()V

    .line 849
    .local v1, dataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 850
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 851
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .line 852
    .local v4, length:I
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveDataDestinationAddress: valueIndex , Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    if-gtz v4, :cond_0

    .line 854
    const-string v10, "ValueParser"

    const-string/jumbo v11, "retrieveDataDestinationAddress: Length is 00. Supply Dynamic IP"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 882
    .end local v1           #dataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :goto_0
    return-object v1

    .line 858
    .restart local v1       #dataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7           #valueIndex:I
    .local v8, valueIndex:I
    :try_start_0
    aget-byte v10, v5, v7

    iput-byte v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    .line 859
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveDataDestinationAddress: Address Type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-byte v12, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " beginning Byte array copy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-array v6, v4, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 862
    .local v6, tempDataDestAddress:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 863
    add-int/lit8 v7, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    :try_start_1
    aget-byte v10, v5, v8

    aput-byte v10, v6, v3

    .line 864
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 862
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1

    .line 866
    :cond_1
    :try_start_2
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveDataDestinationAddress: tempDataDestAddress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Byte array copy complete"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 869
    .local v0, add:Ljava/net/InetAddress;
    const-string v10, "ValueParser"

    const-string/jumbo v11, "retrieveDataDestinationAddress : InetAddress retrieved "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    .line 872
    .end local v8           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto/16 :goto_0

    .line 873
    .end local v0           #add:Ljava/net/InetAddress;
    .end local v3           #i:I
    .end local v6           #tempDataDestAddress:[B
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_0
    move-exception v2

    move v7, v8

    .line 874
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v7       #valueIndex:I
    :goto_2
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - IndexOutOfBoundsException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 876
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_1
    move-exception v2

    move v7, v8

    .line 877
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/net/UnknownHostException;
    .restart local v7       #valueIndex:I
    :goto_3
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - UnknownHostException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 879
    .end local v2           #e:Ljava/net/UnknownHostException;
    .end local v7           #valueIndex:I
    .restart local v8       #valueIndex:I
    :catch_2
    move-exception v2

    move v7, v8

    .line 880
    .end local v8           #valueIndex:I
    .local v2, e:Ljava/lang/Exception;
    .restart local v7       #valueIndex:I
    :goto_4
    const-string v10, "ValueParser"

    const-string v11, "Unknown ResultException in retrieveDataDestinationAddress: "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 882
    goto/16 :goto_0

    .line 879
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i:I
    .restart local v6       #tempDataDestAddress:[B
    :catch_3
    move-exception v2

    goto :goto_4

    .line 876
    :catch_4
    move-exception v2

    goto :goto_3

    .line 873
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 72
    .local v0, devIds:Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 73
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 75
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 76
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-object v0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, timeInterval:I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 95
    .local v3, timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 96
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 99
    .local v4, valueIndex:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 100
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 104
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 169
    .local v1, id:Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 170
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 172
    .local v3, valueIndex:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #valueIndex:I
    .local v4, valueIndex:I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 173
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-object v1

    .line 172
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, item:Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 118
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 119
    .local v7, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 121
    .local v3, length:I
    if-eqz v3, :cond_0

    .line 122
    add-int/lit8 v6, v3, -0x1

    .line 125
    .local v6, textLen:I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 126
    .local v1, id:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, text:Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cat/Item;

    .end local v2           #item:Lcom/android/internal/telephony/cat/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1           #id:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #textLen:I
    .restart local v2       #item:Lcom/android/internal/telephony/cat/Item;
    :cond_0
    return-object v2

    .line 129
    .end local v2           #item:Lcom/android/internal/telephony/cat/Item;
    .restart local v6       #textLen:I
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v1, 0x0

    .line 147
    .local v1, id:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 148
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 151
    .local v3, valueIndex:I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 156
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v8, "ValueParser"

    const-string/jumbo v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 194
    .local v1, id:Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 195
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 196
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 197
    .local v4, numOfItems:I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 201
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 203
    const/4 v2, 0x0

    .local v2, index:I
    move v3, v2

    .end local v2           #index:I
    .local v3, index:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 204
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_1

    .line 201
    .end local v3           #index:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    move v6, v7

    .line 207
    .end local v7           #valueIndex:I
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v6       #valueIndex:I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 209
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v6           #valueIndex:I
    .restart local v3       #index:I
    .restart local v7       #valueIndex:I
    :cond_1
    return-object v1

    .line 206
    .end local v3           #index:I
    .end local v7           #valueIndex:I
    .restart local v2       #index:I
    .restart local v6       #valueIndex:I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 4
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 690
    .local v1, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 691
    .local v2, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    .line 692
    .local v0, length:I
    if-eqz v0, :cond_0

    .line 693
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 695
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 14
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 897
    .local v5, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    .line 898
    .local v8, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 900
    .local v4, length:I
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrieveNetworkAccessName: valueIndex , Length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :try_start_0
    new-array v7, v4, [B

    .line 903
    .local v7, tempNetworkAccessName:[B
    const-string v11, "ValueParser"

    const-string/jumbo v12, "retrieveNetworkAccessName: beginning Byte array copy"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 v2, 0x0

    .line 907
    .local v2, idx:I
    aget-byte v9, v5, v8

    .line 908
    .local v9, wordLen:I
    add-int/lit8 v10, v9, 0x1

    .line 910
    .local v10, wordLenIdx:I
    const/4 v1, 0x1

    .local v1, i:I
    move v3, v2

    .end local v2           #idx:I
    .local v3, idx:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 911
    if-ne v1, v10, :cond_0

    .line 912
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    const/16 v11, 0x2e

    aput-byte v11, v7, v3

    .line 914
    add-int v11, v8, v1

    aget-byte v9, v5, v11

    .line 915
    add-int/lit8 v11, v9, 0x1

    add-int/2addr v10, v11

    .line 910
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #idx:I
    .restart local v3       #idx:I
    goto :goto_0

    .line 917
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #idx:I
    .restart local v2       #idx:I
    add-int v11, v8, v1

    aget-byte v11, v5, v11

    aput-byte v11, v7, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 925
    .end local v1           #i:I
    .end local v2           #idx:I
    .end local v7           #tempNetworkAccessName:[B
    .end local v9           #wordLen:I
    .end local v10           #wordLenIdx:I
    :catch_0
    move-exception v0

    .line 926
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - IndexOutOfBoundsException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 920
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #i:I
    .restart local v3       #idx:I
    .restart local v7       #tempNetworkAccessName:[B
    .restart local v9       #wordLen:I
    .restart local v10       #wordLenIdx:I
    :cond_1
    :try_start_1
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrieveNetworkAccessName: tempNetworkAccessName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Byte array copy complete"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v6, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF-8"

    invoke-direct {v6, v7, v11, v3, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 923
    .local v6, tempName:Ljava/lang/String;
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "retrieveNetworkAccessName: tempName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 935
    .end local v1           #i:I
    .end local v3           #idx:I
    .end local v6           #tempName:Ljava/lang/String;
    .end local v7           #tempNetworkAccessName:[B
    .end local v9           #wordLen:I
    .end local v10           #wordLenIdx:I
    :goto_2
    return-object v6

    .line 928
    :catch_1
    move-exception v0

    .line 929
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - UnsupportedEncodingException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 931
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 932
    .local v0, e:Ljava/lang/Exception;
    const-string v11, "ValueParser"

    const-string v12, "Unknown ResultException in retrieveNetworkAccessName: "

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    const/4 v6, 0x0

    goto :goto_2
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 440
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 442
    .local v5, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 444
    .local v2, length:I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 447
    .local v4, rawValueSmscaddress:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_0

    .line 448
    add-int/lit8 v6, v5, -0x1

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 453
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    .line 454
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 456
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 35
    .parameter "ctlv"
    .parameter "ispacking_req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v27

    .line 462
    .local v27, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v31

    .line 463
    .local v31, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 464
    .local v17, length:I
    const/4 v8, 0x0

    .line 465
    .local v8, destaddlen:I
    const/16 v26, 0x0

    .line 468
    .local v26, rawPdu:[B
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    rem-int/lit8 v32, v32, 0x2

    if-nez v32, :cond_0

    .line 469
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    div-int/lit8 v8, v32, 0x2

    .line 473
    :goto_0
    add-int/lit8 v32, v8, 0x6

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 474
    add-int/lit8 v32, v17, 0x1

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 480
    :goto_1
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    .line 481
    add-int v32, v31, v13

    :try_start_0
    aget-byte v32, v27, v32

    aput-byte v32, v26, v13
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 471
    .end local v13           #i:I
    :cond_0
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    add-int/lit8 v32, v32, 0x1

    div-int/lit8 v8, v32, 0x2

    goto :goto_0

    .line 476
    :cond_1
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v26, v0

    goto :goto_1

    .line 483
    .restart local v13       #i:I
    :catch_0
    move-exception v10

    .line 484
    .local v10, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 488
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const/16 v24, 0x0

    .line 489
    .local v24, packingUserDataIndex:I
    const/16 v25, 0x0

    .line 490
    .local v25, packingUserDatalen:I
    const/4 v4, 0x0

    .line 491
    .local v4, adjustedUserDatalen:I
    const/16 v18, 0x0

    .line 492
    .local v18, lengthtoCheck:I
    const/16 v30, 0x0

    .line 493
    .local v30, tpvpvalue:I
    const/16 v29, 0x0

    .line 494
    .local v29, tpvplength:I
    const/4 v9, 0x0

    .line 495
    .local v9, destaddrlen:I
    const/4 v7, 0x0

    .line 497
    .local v7, dcs:I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "rawtpvp:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-byte v34, v26, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/16 v32, 0x0

    aget-byte v32, v26, v32

    and-int/lit8 v30, v32, 0x18

    .line 501
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "tpvpvalue:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-nez v30, :cond_5

    .line 504
    const/16 v29, 0x0

    .line 513
    :cond_3
    :goto_3
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    rem-int/lit8 v32, v32, 0x2

    if-nez v32, :cond_8

    .line 514
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    div-int/lit8 v9, v32, 0x2

    .line 518
    :goto_4
    add-int/lit8 v32, v9, 0x3

    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v32, v32, 0x1

    add-int v32, v32, v29

    add-int/lit8 v24, v32, 0x1

    .line 520
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    :try_start_1
    aget-byte v7, v26, v32
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 524
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SEND SMS DCS = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v32, "gsm.sim.operator.numeric"

    const-string v33, ""

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, MCCMNC:Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    and-int/lit16 v0, v7, 0xf4

    move/from16 v32, v0

    const/16 v33, 0xf0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const-string v32, "404"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "510"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "520"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "405"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "51503"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "28602"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 533
    :cond_4
    :try_start_2
    aget-byte v32, v26, v24
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 538
    add-int/lit8 v32, v24, 0x1

    sub-int v18, v17, v32

    .line 540
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "length to be checked:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 544
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_packingUserDatalen:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/16 v28, 0x0

    .line 546
    .local v28, shorten:I
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 549
    .local v22, packinUserData:[B
    const/4 v14, 0x0

    .local v14, j:I
    :goto_5
    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    .line 550
    add-int/lit8 v32, v24, 0x1

    add-int v32, v32, v14

    :try_start_3
    aget-byte v32, v26, v32

    aput-byte v32, v22, v14
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 549
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 505
    .end local v3           #MCCMNC:Ljava/lang/String;
    .end local v14           #j:I
    .end local v22           #packinUserData:[B
    .end local v28           #shorten:I
    :cond_5
    const/16 v32, 0x10

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 506
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 507
    :cond_6
    const/16 v32, 0x8

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 508
    const/16 v29, 0x7

    goto/16 :goto_3

    .line 509
    :cond_7
    const/16 v32, 0x18

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 510
    const/16 v29, 0x7

    goto/16 :goto_3

    .line 516
    :cond_8
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    add-int/lit8 v32, v32, 0x1

    div-int/lit8 v9, v32, 0x2

    goto/16 :goto_4

    .line 521
    :catch_1
    move-exception v10

    .line 522
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 534
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #MCCMNC:Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 535
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 552
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v14       #j:I
    .restart local v22       #packinUserData:[B
    .restart local v28       #shorten:I
    :catch_3
    move-exception v10

    .line 553
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 557
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v23

    .line 560
    .local v23, packinUserDataString:Ljava/lang/String;
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_packingUserDatastring:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0xa0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_a

    .line 564
    const/16 v32, 0x0

    const/16 v33, 0x9e

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 565
    .local v12, fullSizePackinUserDataString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, -0x9e

    move/from16 v28, v0

    .line 566
    aget-byte v32, v26, v24

    sub-int v32, v32, v28

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    aput-byte v32, v26, v24

    .line 567
    move-object/from16 v23, v12

    .line 572
    .end local v12           #fullSizePackinUserDataString:Ljava/lang/String;
    :cond_a
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v19

    .line 574
    .local v19, packedUserData:[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 576
    .local v20, packedUserDatalen:I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_Packed user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 579
    const/4 v15, 0x1

    .local v15, k:I
    :goto_6
    move/from16 v0, v20

    if-ge v15, v0, :cond_b

    .line 580
    add-int v32, v24, v15

    :try_start_5
    aget-byte v33, v19, v15

    aput-byte v33, v26, v32

    .line 579
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 583
    :cond_b
    add-int/lit8 v32, v20, -0x1

    sub-int v32, v25, v32

    sub-int v4, v17, v32

    .line 585
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_Adjusted user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 644
    .end local v28           #shorten:I
    :goto_7
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Data coding scheme:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    add-int/lit8 v34, v29, 0x1

    sub-int v34, v24, v34

    aget-byte v34, v26, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/16 v6, 0xf0

    .line 648
    .local v6, datacodingscheme:I
    const/4 v5, 0x0

    .line 649
    .local v5, datacodingfromsim:I
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    aget-byte v5, v26, v32

    .line 650
    and-int/2addr v5, v6

    .line 651
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    int-to-byte v0, v5

    move/from16 v33, v0

    aput-byte v33, v26, v32

    .line 653
    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 656
    .local v21, packeddata:[B
    const/16 v16, 0x0

    .local v16, l:I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v4, :cond_f

    .line 657
    :try_start_6
    aget-byte v32, v26, v16

    aput-byte v32, v21, v16
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_9

    .line 656
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 587
    .end local v5           #datacodingfromsim:I
    .end local v6           #datacodingscheme:I
    .end local v16           #l:I
    .end local v21           #packeddata:[B
    .restart local v28       #shorten:I
    :catch_4
    move-exception v10

    .line 588
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 590
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #k:I
    .end local v19           #packedUserData:[B
    .end local v20           #packedUserDatalen:I
    :catch_5
    move-exception v11

    .line 591
    .local v11, ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 597
    .end local v11           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v14           #j:I
    .end local v22           #packinUserData:[B
    .end local v23           #packinUserDataString:Ljava/lang/String;
    .end local v28           #shorten:I
    :cond_c
    add-int/lit8 v25, v18, 0x1

    .line 599
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "packingUserDatalen:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 604
    .restart local v22       #packinUserData:[B
    const/4 v14, 0x0

    .restart local v14       #j:I
    :goto_9
    move/from16 v0, v25

    if-ge v14, v0, :cond_d

    .line 605
    add-int v32, v24, v14

    :try_start_8
    aget-byte v32, v26, v32

    aput-byte v32, v22, v14
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    .line 604
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 607
    :catch_6
    move-exception v10

    .line 608
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 613
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_d
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v23

    .line 616
    .restart local v23       #packinUserDataString:Ljava/lang/String;
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "packingUserDatastring:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :try_start_9
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v19

    .line 621
    .restart local v19       #packedUserData:[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 623
    .restart local v20       #packedUserDatalen:I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Packed user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 626
    const/4 v15, 0x0

    .restart local v15       #k:I
    :goto_a
    add-int/lit8 v32, v20, -0x1

    move/from16 v0, v32

    if-ge v15, v0, :cond_e

    .line 627
    add-int v32, v24, v15

    add-int/lit8 v33, v15, 0x1

    :try_start_a
    aget-byte v33, v19, v33

    aput-byte v33, v26, v32

    .line 626
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 630
    :cond_e
    add-int/lit8 v32, v20, -0x1

    sub-int v32, v25, v32

    sub-int v4, v17, v32

    .line 632
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Adjusted user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_7

    .line 634
    :catch_7
    move-exception v10

    .line 635
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
    :try_end_b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b .. :try_end_b} :catch_8

    .line 637
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #k:I
    .end local v19           #packedUserData:[B
    .end local v20           #packedUserDatalen:I
    :catch_8
    move-exception v11

    .line 638
    .restart local v11       #ex:Lcom/android/internal/telephony/EncodeException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 659
    .end local v11           #ex:Lcom/android/internal/telephony/EncodeException;
    .restart local v5       #datacodingfromsim:I
    .restart local v6       #datacodingscheme:I
    .restart local v15       #k:I
    .restart local v16       #l:I
    .restart local v19       #packedUserData:[B
    .restart local v20       #packedUserDatalen:I
    .restart local v21       #packeddata:[B
    :catch_9
    move-exception v10

    .line 660
    .restart local v10       #e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 663
    .end local v10           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_f
    if-eqz v4, :cond_10

    .line 664
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v32

    .line 673
    .end local v5           #datacodingfromsim:I
    .end local v6           #datacodingscheme:I
    .end local v14           #j:I
    .end local v15           #k:I
    .end local v16           #l:I
    .end local v19           #packedUserData:[B
    .end local v20           #packedUserDatalen:I
    .end local v21           #packeddata:[B
    .end local v22           #packinUserData:[B
    .end local v23           #packinUserDataString:Ljava/lang/String;
    :goto_b
    return-object v32

    .line 666
    .restart local v5       #datacodingfromsim:I
    .restart local v6       #datacodingscheme:I
    .restart local v14       #j:I
    .restart local v15       #k:I
    .restart local v16       #l:I
    .restart local v19       #packedUserData:[B
    .restart local v20       #packedUserDatalen:I
    .restart local v21       #packeddata:[B
    .restart local v22       #packinUserData:[B
    .restart local v23       #packinUserDataString:Ljava/lang/String;
    :cond_10
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 672
    .end local v5           #datacodingfromsim:I
    .end local v6           #datacodingscheme:I
    .end local v14           #j:I
    .end local v15           #k:I
    .end local v16           #l:I
    .end local v19           #packedUserData:[B
    .end local v20           #packedUserDatalen:I
    .end local v21           #packeddata:[B
    .end local v22           #packinUserData:[B
    .end local v23           #packinUserDataString:Ljava/lang/String;
    :cond_11
    if-eqz v17, :cond_12

    .line 673
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v32

    goto :goto_b

    .line 675
    :cond_12
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 327
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 328
    .local v3, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 329
    .local v1, length:I
    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 337
    :goto_0
    return-object v4

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 337
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v18, lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 225
    .local v19, rawValue:[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 226
    .local v21, valueIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 228
    .local v17, length:I
    if-eqz v17, :cond_5

    .line 230
    div-int/lit8 v16, v17, 0x4

    .line 233
    .local v16, itemCount:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 234
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 235
    .local v2, start:I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 236
    .local v3, textLength:I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 237
    .local v14, format:I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 239
    .local v12, colorValue:I
    and-int/lit8 v11, v14, 0x3

    .line 240
    .local v11, alignValue:I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 242
    .local v4, align:Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 243
    .local v20, sizeValue:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 244
    .local v5, size:Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 246
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 249
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 250
    .local v6, bold:Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 251
    .local v7, italic:Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 252
    .local v8, underlined:Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 254
    .local v9, strikeThrough:Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 256
    .local v10, color:Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 259
    .local v1, attr:Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 249
    .end local v1           #attr:Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v9           #strikeThrough:Z
    .end local v10           #color:Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 250
    .restart local v6       #bold:Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 251
    .restart local v7       #italic:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 252
    .restart local v8       #underlined:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 264
    .end local v2           #start:I
    .end local v3           #textLength:I
    .end local v4           #align:Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5           #size:Lcom/android/internal/telephony/cat/FontSize;
    .end local v6           #bold:Z
    .end local v7           #italic:Z
    .end local v8           #underlined:Z
    .end local v11           #alignValue:I
    .end local v12           #colorValue:I
    .end local v14           #format:I
    .end local v20           #sizeValue:I
    :catch_0
    move-exception v13

    .line 265
    .local v13, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 268
    .end local v13           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v15           #i:I
    .end local v16           #itemCount:I
    :cond_5
    const/16 v18, 0x0

    .end local v18           #lst:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 399
    .local v2, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 400
    .local v6, valueIndex:I
    const/4 v0, 0x0

    .line 401
    .local v0, codingScheme:B
    const/4 v3, 0x0

    .line 402
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 405
    .local v5, textLen:I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 429
    .end local v3           #text:Ljava/lang/String;
    .local v4, text:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 411
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 415
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 417
    if-nez v0, :cond_1

    .line 418
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 429
    .end local v3           #text:Ljava/lang/String;
    .restart local v4       #text:Ljava/lang/String;
    goto :goto_0

    .line 420
    .end local v4           #text:Ljava/lang/String;
    .restart local v3       #text:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 421
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 423
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 424
    new-instance v3, Ljava/lang/String;

    .end local v3           #text:Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1

    .line 426
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    .end local v3           #text:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 431
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 432
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 434
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportLevel;
    .locals 10
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 817
    new-instance v5, Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TransportLevel;-><init>()V

    .line 818
    .local v5, transportLevel:Lcom/android/internal/telephony/cat/TransportLevel;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 819
    .local v3, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 820
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 821
    .local v2, length:I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveTransportLevel: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :try_start_0
    aget-byte v7, v3, v6

    iput-byte v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 824
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v1, v7, 0xff

    .line 825
    .local v1, firstByte:I
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v4, v7, 0xff

    .line 826
    .local v4, secondByte:I
    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    iput v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    .line 827
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "retrieveTransportLevel: transportProtocol , portNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 835
    .end local v1           #firstByte:I
    .end local v4           #secondByte:I
    .end local v5           #transportLevel:Lcom/android/internal/telephony/cat/TransportLevel;
    :goto_0
    return-object v5

    .line 829
    .restart local v5       #transportLevel:Lcom/android/internal/telephony/cat/TransportLevel;
    :catch_0
    move-exception v0

    .line 830
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveTransportLevel"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 832
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 833
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveTransportLevel: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 9
    .parameter "ctlv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 351
    .local v4, rawValue:[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 352
    .local v6, valueIndex:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 353
    .local v3, length:I
    add-int v8, v6, v3

    add-int/lit8 v0, v8, -0x1

    .line 354
    .local v0, endOfUssdString:I
    if-eqz v3, :cond_1

    .line 355
    new-array v5, v3, [B

    .line 356
    .local v5, ussdString:[B
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    :goto_0
    if-gt v7, v0, :cond_0

    .line 357
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    move v7, v6

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    goto :goto_0

    :cond_0
    move v6, v7

    .line 361
    .end local v2           #i:I
    .end local v5           #ussdString:[B
    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
