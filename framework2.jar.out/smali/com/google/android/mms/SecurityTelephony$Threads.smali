.class public final Lcom/google/android/mms/SecurityTelephony$Threads;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"

# interfaces
.implements Lcom/google/android/mms/SecurityTelephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/SecurityTelephony$Threads$Intents;
    }
.end annotation


# static fields
.field public static final ALERTS_ALL_ONE_THREAD:I = 0x6e

.field public static final ALERT_AMBER_THREAD:I = 0x67

.field public static final ALERT_EXTREME_THREAD:I = 0x65

.field public static final ALERT_PRESIDENTIAL_THREAD:I = 0x64

.field public static final ALERT_SEVERE_THREAD:I = 0x66

.field public static final ALERT_TEST_MESSAGE_THREAD:I = 0x68

.field public static final BROADCAST_THREAD:I = 0x1

.field public static final CMAS_URI:Landroid/net/Uri; = null

.field public static final COMMON_THREAD:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final LAST_MESSAGE_TIME_URI:Landroid/net/Uri; = null

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri; = null

.field public static final REPLY_ALL_URI:Landroid/net/Uri; = null

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final TEMP_RECIPIENT:J = 0x7ffffffffffffffeL

.field public static final TEMP_THREAD_ID:J = 0x7ffffffffffffffeL

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1455
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 1457
    const-string v0, "content://security_mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 1459
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1461
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    .line 1464
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cmas"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->CMAS_URI:Landroid/net/Uri;

    .line 1469
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "reply_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->REPLY_ALL_URI:Landroid/net/Uri;

    .line 1471
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "last_msg_time"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1497
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1498
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3
    .parameter "context"
    .parameter "recipient"

    .prologue
    .line 1514
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1516
    .local v0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1517
    invoke-static {p0, v0}, Lcom/google/android/mms/SecurityTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1548
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/mms/SecurityTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Z)J
    .locals 11
    .parameter "context"
    .parameter
    .parameter "createThread"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)J"
        }
    .end annotation

    .prologue
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1553
    sget-object v0, Lcom/google/android/mms/SecurityTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1556
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {p1}, Lcom/google/android/mms/SecurityTelephony$Threads;->isTempRecipient(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    const-wide v0, 0x7ffffffffffffffeL

    .line 1594
    :goto_0
    return-wide v0

    .line 1561
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1562
    .local v9, recipient:Ljava/lang/String;
    invoke-static {v9}, Lcom/google/android/mms/SecurityTelephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1563
    invoke-static {v9}, Lcom/google/android/mms/SecurityTelephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1566
    :cond_1
    const-string v0, "recipient"

    invoke-virtual {v10, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1569
    .end local v9           #recipient:Ljava/lang/String;
    :cond_2
    const-string v0, "createthread"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1571
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1574
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/google/android/mms/SecurityTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1576
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1579
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1580
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1585
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1582
    :cond_3
    :try_start_1
    const-string v0, "SecurityTelephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1585
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1591
    :cond_4
    if-eqz p2, :cond_5

    .line 1592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1585
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1594
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static isTempRecipient(Ljava/util/Set;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1526
    .local p0, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1527
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1528
    .local v1, recipient:Ljava/lang/String;
    const-wide v2, 0x7ffffffffffffffeL

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1531
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #recipient:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
