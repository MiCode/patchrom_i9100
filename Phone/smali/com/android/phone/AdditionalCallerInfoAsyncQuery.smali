.class public Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "AdditionalCallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;,
        Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

.field private mContext:Landroid/content/Context;

.field private mQueryState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 40
    iput-boolean v1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    .line 52
    iput v1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 95
    iput-object p1, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 297
    move-object v0, p1

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 298
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v1

    .line 297
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 278
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 279
    .local v2, auths:[Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v5, v5, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 282
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v5, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 284
    .local v3, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDisplayIcon : iconId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 286
    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 288
    :cond_0
    return-object v4
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->DBG:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "AdditionalCallerInfoAsyncQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method

.method public static startQuery(Landroid/content/Context;JLcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;)V
    .locals 18
    .parameter "context"
    .parameter "contactID"
    .parameter "onQueryCompleteListener"

    .prologue
    .line 102
    new-instance v2, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, c:Lcom/android/phone/AdditionalCallerInfoAsyncQuery;
    new-instance v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;-><init>(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$1;)V

    .line 105
    .local v4, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-wide/from16 v0, p1

    iput-wide v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->contactID:J

    .line 106
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 109
    const-string v3, "display_sns_info"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v15, "requesting_package"

    .line 111
    .local v15, REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "stream_items"

    invoke-virtual {v3, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v7, "requesting_package"

    const-string v8, "com.android.phone"

    invoke-virtual {v3, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 114
    .local v5, uri:Landroid/net/Uri;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "account_name"

    aput-object v7, v6, v3

    const/4 v3, 0x1

    const-string v7, "account_type"

    aput-object v7, v6, v3

    const/4 v3, 0x2

    const-string v7, "text"

    aput-object v7, v6, v3

    .line 120
    .local v6, CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v2 .. v9}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #CONTACTS_SNS_PROJECTION:[Ljava/lang/String;
    .end local v15           #REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String;
    :cond_0
    const-string v3, "display_birthday_info"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    .line 128
    .local v17, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "limit"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    .line 130
    .local v10, birthUri:Landroid/net/Uri;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v3, "contact_id= \'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\' AND "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v3, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v3, "data2= 3"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/4 v8, 0x2

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "data1"

    aput-object v7, v11, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v9, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v10           #birthUri:Landroid/net/Uri;
    .end local v16           #sb:Ljava/lang/StringBuilder;
    .end local v17           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 18
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 158
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : token = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    move-object/from16 v6, p2

    .line 161
    check-cast v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;

    .line 163
    .local v6, cw:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    if-nez v13, :cond_0

    .line 164
    new-instance v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct {v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    .line 166
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 261
    :cond_1
    :goto_0
    const-string v13, "display_sns_info"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 262
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 263
    :cond_2
    const-string v13, "display_birthday_info"

    invoke-static {v13}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 264
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 266
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    or-int v13, v13, p1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mQueryState:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    .line 269
    const-string v13, "onQueryComplete : Query complete!"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 270
    iget-object v13, v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v13, :cond_4

    .line 271
    iget-object v13, v6, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$CookieWrapper;->listener:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-interface {v13, v14}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;)V

    .line 273
    :cond_4
    return-void

    .line 168
    :pswitch_0
    if-eqz p3, :cond_1

    .line 170
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 171
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "account_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-string v14, "text"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    .line 177
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : Name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Type = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Status : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-object v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    iput-object v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mSNSDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v13

    .line 190
    :pswitch_1
    const/4 v1, 0x0

    .line 191
    .local v1, birthDay:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "yyyy-MM-dd"

    aput-object v14, v8, v13

    .line 194
    .local v8, fullBirthFormat:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 195
    .local v9, isKorLunar:Z
    if-eqz p3, :cond_7

    .line 197
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 198
    const-string v13, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : birthday = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_7
    if-eqz v1, :cond_1

    .line 211
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v13, "MM-dd"

    invoke-direct {v2, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    .local v2, birthFormat:Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .local v3, birthday:Ljava/util/Date;
    const/4 v10, 0x0

    .line 214
    .local v10, today:Ljava/util/Date;
    :try_start_2
    invoke-static {v1, v8}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 217
    const-string v14, "2011-"

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getKorLunarDate()Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    .line 228
    :goto_2
    if-eqz v3, :cond_1

    if-eqz v10, :cond_1

    .line 229
    invoke-virtual {v10}, Ljava/util/Date;->getYear()I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/util/Date;->setYear(I)V

    .line 230
    invoke-virtual {v10, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v13

    if-lez v13, :cond_8

    .line 233
    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v3, v13}, Ljava/util/Date;->setYear(I)V

    .line 236
    :cond_8
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 237
    .local v4, birthdayTime:J
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 238
    .local v11, todayTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    sub-long v14, v4, v11

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-ltz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x7

    cmp-long v13, v13, v15

    if-lez v13, :cond_a

    .line 242
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const-wide/16 v14, -0x1

    iput-wide v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    .line 245
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v13, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    .line 249
    :cond_b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onQueryComplete : mRemainedDaysUntilBirthday = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-wide v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mRemainedDaysUntilBirthday:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isBirthDay : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->mAdditionalCallerInfo:Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;

    iget-boolean v14, v14, Lcom/android/phone/AdditionalCallerInfoAsyncQuery$AdditionalCallerInfo;->mIsBirthDay:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    .end local v2           #birthFormat:Ljava/text/SimpleDateFormat;
    .end local v3           #birthday:Ljava/util/Date;
    .end local v4           #birthdayTime:J
    .end local v10           #today:Ljava/util/Date;
    .end local v11           #todayTime:J
    :catchall_1
    move-exception v13

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v13

    .line 217
    .restart local v2       #birthFormat:Ljava/text/SimpleDateFormat;
    .restart local v3       #birthday:Ljava/util/Date;
    .restart local v10       #today:Ljava/util/Date;
    :cond_c
    :try_start_3
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    goto/16 :goto_1

    .line 222
    :catch_0
    move-exception v7

    .line 223
    .local v7, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-string v13, "birthday - DateParseException"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 224
    .end local v7           #e:Lorg/apache/http/impl/cookie/DateParseException;
    :catch_1
    move-exception v7

    .line 225
    .local v7, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "birthday - Exception - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/AdditionalCallerInfoAsyncQuery;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
