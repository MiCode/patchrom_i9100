.class public Lcom/sec/android/app/callsetting/allcalls/RejectMessageLocaleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RejectMessageLocaleReceiver.java"


# static fields
.field private static FROM:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_message"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "edit_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/RejectMessageLocaleReceiver;->FROM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getRejectMessage(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 40
    const-string v5, "_id desc"

    .line 41
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/callsetting/allcalls/RejectMessageLocaleReceiver;->FROM:[Ljava/lang/String;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v1, "RejectMessageLocaleReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RejectMessageLocaleReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    const-string v1, "RejectMessageLocaleReceiver"

    const-string v2, "RejectMessageLocaleReceiver: FAILURE unable to get content resolver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectMessageLocaleReceiver;->updateRejectMessageDB(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public updateRejectMessageDB(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/RejectMessageLocaleReceiver;->getRejectMessage(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 47
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, idx:I
    const/4 v4, 0x1

    .line 52
    .local v4, mEdited:I
    :cond_0
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 53
    .local v1, id:J
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 55
    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 56
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, message:Ljava/lang/String;
    const-string v9, "RejectMsg"

    const-string v10, "Edited"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    const-string v9, "RejectMessageLocaleReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RejectMsg idx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Reject Message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 75
    .end local v1           #id:J
    .end local v3           #idx:I
    .end local v4           #mEdited:I
    .end local v5           #message:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_2
    return-void

    .line 59
    .restart local v1       #id:J
    .restart local v3       #idx:I
    .restart local v4       #mEdited:I
    :cond_3
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 60
    .local v7, resource:I
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .restart local v5       #message:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "reject_message"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v9, "edit_checked"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    sget-object v9, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 65
    .local v6, rejectmsgUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v8, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    const-string v9, "RejectMsg"

    const-string v10, "default"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
