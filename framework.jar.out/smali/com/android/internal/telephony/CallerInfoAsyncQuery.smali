.class public Lcom/android/internal/telephony/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final ENABLE_UNKNOWN_NUMBER_GEO_DESCRIPTION:Z = true

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/CallerInfoAsyncQuery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "contactRef"

    .prologue
    .line 508
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 509
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery;Landroid/content/Context;Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 514
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 521
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    #setter for: Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lcom/android/internal/telephony/CallerInfo;)Lcom/android/internal/telephony/CallerInfo;

    .line 523
    iput-object v1, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 524
    return-void
.end method

.method private static sanitizeUriToString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 527
    if-eqz p0, :cond_1

    .line 528
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, uriString:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 530
    .local v0, indexOfLastSlash:I
    if-lez v0, :cond_0

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/xxxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    .end local v0           #indexOfLastSlash:I
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 9
    .parameter "token"
    .parameter "context"
    .parameter "contactRef"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v4, 0x0

    .line 338
    new-instance v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .line 339
    .local v8, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 344
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 345
    .local v2, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 346
    iput-object p4, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 347
    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 349
    iget-object v0, v8, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    .locals 14
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 379
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 400
    .local v4, contactRef:Landroid/net/Uri;
    const-string/jumbo v6, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 403
    .local v6, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 442
    .local v7, selectionArgs:[Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    invoke-direct {v9}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;-><init>()V

    .line 443
    .local v9, c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    invoke-direct {v9, p1, v4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 446
    new-instance v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 447
    .local v3, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 448
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 449
    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 452
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const/4 v1, 0x4

    iput v1, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 476
    :goto_1
    iget-object v1, v9, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move v2, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-object v9

    .line 407
    .end local v3           #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .end local v4           #contactRef:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v9           #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 408
    .restart local v4       #contactRef:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 409
    .restart local v6       #selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 412
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v11

    .line 416
    .local v11, mMatchLen:I
    const-string v1, "CallerInfoAsyncQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMatchLen= "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 420
    .local v12, nLen:I
    const/4 v10, 0x0

    .line 421
    .local v10, mIsSpecialNum:Z
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v10

    .line 423
    if-le v12, v11, :cond_0

    if-nez v10, :cond_0

    .line 425
    const-string v1, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 426
    .local v13, phoneLookup:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 454
    .end local v10           #mIsSpecialNum:Z
    .end local v11           #mMatchLen:I
    .end local v12           #nLen:I
    .end local v13           #phoneLookup:Landroid/net/Uri;
    .restart local v3       #cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    .restart local v9       #c:Lcom/android/internal/telephony/CallerInfoAsyncQuery;
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 455
    const/4 v1, 0x5

    iput v1, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1

    .line 457
    :cond_3
    const/4 v1, 0x1

    iput v1, v3, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    goto :goto_1
.end method


# virtual methods
.method public addQueryListener(ILcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    const/4 v3, 0x0

    .line 495
    new-instance v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/internal/telephony/CallerInfoAsyncQuery$1;)V

    .line 496
    .local v2, cw:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 497
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 498
    const/4 v0, 0x2

    iput v0, v2, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->mHandler:Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    return-void
.end method
