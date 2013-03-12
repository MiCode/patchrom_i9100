.class public Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KoreanAddressSeparator"
.end annotation


# static fields
.field static final SEND_ADDRESS_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field public mCurIndex:I

.field public mDestAddr:Ljava/lang/String;

.field public mSenderAddr:Ljava/lang/String;

.field public mTID:I

.field public mTotalCnt:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter "addr"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2521
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2524
    .local v2, tokens:[Ljava/lang/String;
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2525
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    .line 2526
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2527
    iput v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    .line 2528
    iput v6, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTID:I

    .line 2530
    array-length v3, v2

    if-ne v3, v5, :cond_3

    .line 2531
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2560
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2561
    :cond_0
    const-string v3, "SMS"

    const-string v4, "No sender address info. Set to getLine1Number()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2565
    .local v1, sendAddr:Ljava/lang/String;
    const-string v3, "+82"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2569
    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2576
    .end local v1           #sendAddr:Ljava/lang/String;
    :cond_2
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KoreanAddressSeparator: destAddr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " senderAddr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " curIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalCnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    :goto_1
    return-void

    .line 2532
    :cond_3
    array-length v3, v2

    if-ne v3, v7, :cond_4

    .line 2533
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2534
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    goto/16 :goto_0

    .line 2535
    :cond_4
    array-length v3, v2

    if-ne v3, v8, :cond_5

    .line 2536
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2538
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2539
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto/16 :goto_0

    .line 2540
    :cond_5
    array-length v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 2541
    aget-object v3, v2, v6

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mDestAddr:Ljava/lang/String;

    .line 2542
    aget-object v3, v2, v5

    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mSenderAddr:Ljava/lang/String;

    .line 2544
    aget-object v3, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mCurIndex:I

    .line 2545
    aget-object v3, v2, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SMSDispatcher$KoreanAddressSeparator;->mTotalCnt:I

    goto/16 :goto_0

    .line 2548
    :cond_6
    array-length v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 2556
    :cond_7
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KoreanAddressSeparator: Illegal format. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2570
    :catch_0
    move-exception v0

    .line 2571
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
