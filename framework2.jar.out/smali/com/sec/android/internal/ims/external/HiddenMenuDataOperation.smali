.class public Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
.super Ljava/lang/Object;
.source "HiddenMenuDataOperation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteExistingRow(Landroid/content/ContentResolver;)I
    .locals 4
    .parameter "r1"

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v0, 0x0

    .local v0, rowCount:I
    const/4 v1, 0x0

    .line 72
    .local v1, x:I
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getRowCount(Landroid/content/ContentResolver;)I

    move-result v0

    .line 73
    if-lez v0, :cond_0

    .line 75
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_DEL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 77
    :cond_0
    return v1
.end method

.method public getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 9
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    sget-object v1, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, c1:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    new-instance v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v8           #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v8}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 137
    .restart local v8       #menuData:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 139
    const-string v0, "mPrefCscfDns"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 140
    .local v7, coordIdx:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 142
    const-string v0, "mAlwaysOn"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 143
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 145
    const-string v0, "mPrefCscfIp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 146
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 148
    const-string v0, "mPrefCscfDomain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 149
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    .line 151
    const-string v0, "mPrefCscfPort"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 152
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 154
    const-string v0, "mPrefXdmDns"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 155
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    .line 157
    const-string v0, "mPrefXdmIp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 158
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    .line 160
    const-string v0, "mPrefAudioCodec"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 161
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 163
    const-string v0, "mPrefVideoCodec"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 164
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 166
    const-string v0, "mLoopback"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 167
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    .line 169
    const-string v0, "mEnableQos"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 170
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    .line 172
    const-string v0, "mVideoProfile"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 173
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    .line 175
    const-string v0, "mAudioFirst"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 176
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    .line 178
    const-string v0, "mQosAware"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 179
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    .line 181
    const-string v0, "mVTDebugging"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 182
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    .line 184
    const-string v0, "mAutoTest"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 185
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    .line 187
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v0, v8, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildTypeVal:Ljava/lang/String;

    .line 189
    .end local v7           #coordIdx:I
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_1
    return-object v8
.end method

.method public getRowCount(Landroid/content/ContentResolver;)I
    .locals 8
    .parameter "r1"

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    .local v7, r:I
    sget-object v1, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 61
    :cond_0
    return v7
.end method

.method public insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter "obj"
    .parameter "r1"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 89
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "mPrefCscfDns"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "mPrefCscfIp"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "mPrefCscfDomain"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "mPrefCscfPort"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "mPrefXdmDns"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "mPrefXdmIp"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v2, "mPrefAudioCodec"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "mPrefVideoCodec"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "mLoopback"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "mAlwaysOn"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v2, "mEnableQos"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v2, "mVideoProfile"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v2, "mAudioFirst"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "mQosAware"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "mVTDebugging"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "mAutoTest"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v2, Lcom/sec/android/internal/ims/external/MenuDetails$User;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 108
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method public insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I
    .locals 1
    .parameter "item"
    .parameter "value"
    .parameter "r1"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method
