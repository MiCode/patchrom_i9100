.class public Lcom/sec/android/app/sysscope/service/SysScopeVerifier;
.super Ljava/lang/Object;
.source "SysScopeVerifier.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private parseScopeApk(Ljava/lang/String;)Z
    .locals 28
    .parameter "apkPath"

    .prologue
    .line 72
    const/16 v20, 0x0

    .line 73
    .local v20, retValue:Z
    const/4 v3, 0x0

    .line 74
    .local v3, apkFile:Ljava/util/jar/JarFile;
    const/4 v12, 0x0

    .line 81
    .local v12, is:Ljava/io/InputStream;
    :try_start_0
    const-string v25, "SHA-1"

    invoke-static/range {v25 .. v25}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 82
    .local v7, digest:Ljava/security/MessageDigest;
    const/4 v8, 0x0

    .line 83
    .local v8, digestB64String:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    const-string v26, "lib/armeabi/libcordon.so"

    aput-object v26, v23, v25

    const/16 v25, 0x1

    const-string v26, "classes.dex"

    aput-object v26, v23, v25

    .line 84
    .local v23, strKey:[Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string v26, ""

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string v26, ""

    aput-object v26, v24, v25

    .line 86
    .local v24, strValue:[Ljava/lang/String;
    const/16 v25, 0x2000

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 92
    .local v19, readBuffer:[B
    new-instance v4, Ljava/util/jar/JarFile;

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-direct {v4, v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a

    .line 94
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .local v4, apkFile:Ljava/util/jar/JarFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v16

    .line 96
    .local v16, mf:Ljava/util/jar/Manifest;
    invoke-virtual/range {v16 .. v16}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 98
    .local v14, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_4

    .line 123
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v10

    .local v10, entries:Ljava/util/Enumeration;
    move-object v13, v12

    .line 125
    .end local v12           #is:Ljava/io/InputStream;
    .local v13, is:Ljava/io/InputStream;
    :cond_1
    :try_start_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v25

    if-nez v25, :cond_9

    .line 172
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 176
    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v25, Ljava/io/FileInputStream;

    .line 177
    const-string v26, "/system/lib/libcordon.so"

    invoke-direct/range {v25 .. v26}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_b

    .line 179
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 180
    const/16 v17, 0x0

    .line 181
    .local v17, nByteCount:I
    :goto_0
    const/16 v25, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    const/16 v25, -0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 184
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 186
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v25

    .line 187
    const/16 v26, 0x0

    .line 186
    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 190
    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v26, v24, v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 191
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "/system/lib/libcordon.so return false: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v24, v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 191
    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4

    .line 193
    const/16 v20, 0x0

    .line 212
    if-eqz v4, :cond_2

    .line 213
    :try_start_4
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_2
    if-eqz v12, :cond_3

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_1
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    move/from16 v21, v20

    .line 224
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .end local v19           #readBuffer:[B
    .end local v20           #retValue:Z
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .local v21, retValue:I
    :goto_2
    return v21

    .line 99
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v20       #retValue:Z
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 100
    .local v9, e:Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 103
    .local v18, name:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v11, v0, :cond_0

    .line 105
    aget-object v25, v23, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 107
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/Attributes;

    .line 108
    .local v6, attr:Ljava/util/jar/Attributes;
    invoke-virtual {v6}, Ljava/util/jar/Attributes;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, attIt:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 103
    .end local v5           #attIt:Ljava/util/Iterator;
    .end local v6           #attr:Ljava/util/jar/Attributes;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 111
    .restart local v5       #attIt:Ljava/util/Iterator;
    .restart local v6       #attr:Ljava/util/jar/Attributes;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 112
    .local v22, se:Ljava/util/Map$Entry;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    aput-object v25, v24, v11

    .line 113
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "SHA1-Digest :"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    .line 201
    .end local v5           #attIt:Ljava/util/Iterator;
    .end local v6           #attr:Ljava/util/jar/Attributes;
    .end local v9           #e:Ljava/util/Map$Entry;
    .end local v11           #i:I
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v18           #name:Ljava/lang/String;
    .end local v22           #se:Ljava/util/Map$Entry;
    :catch_0
    move-exception v9

    move-object v3, v4

    .line 202
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 203
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_7

    .line 213
    :try_start_7
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_7
    if-eqz v12, :cond_8

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .end local v9           #e:Ljava/io/IOException;
    :cond_8
    :goto_6
    move/from16 v21, v20

    .line 224
    .restart local v21       #retValue:I
    goto/16 :goto_2

    .line 126
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/jar/JarEntry;

    .line 128
    .local v15, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_1

    .line 132
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_7
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ge v11, v0, :cond_1

    .line 133
    invoke-virtual {v15}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v25

    aget-object v26, v23, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 140
    new-instance v12, Ljava/io/BufferedInputStream;

    .line 141
    invoke-virtual {v4, v15}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v25

    .line 140
    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_b

    .line 143
    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    :try_start_9
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 144
    const/16 v17, 0x0

    .line 145
    .restart local v17       #nByteCount:I
    :goto_8
    const/16 v25, 0x0

    .line 146
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    .line 145
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .line 146
    const/16 v25, -0x1

    .line 145
    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 149
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 152
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v25

    const/16 v26, 0x0

    .line 151
    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v7}, Ljava/security/MessageDigest;->reset()V

    .line 155
    aget-object v25, v24, v11

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 156
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    aget-object v26, v24, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 159
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "digestB64String:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "strValue[i]:"

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4

    .line 161
    const/16 v20, 0x0

    .line 212
    if-eqz v4, :cond_a

    .line 213
    :try_start_a
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_a
    if-eqz v12, :cond_b

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_b
    :goto_9
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    move/from16 v21, v20

    .line 162
    .restart local v21       #retValue:I
    goto/16 :goto_2

    .line 147
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v21           #retValue:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    :cond_c
    const/16 v25, 0x0

    :try_start_b
    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_8

    .line 204
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v11           #i:I
    .end local v14           #it:Ljava/util/Iterator;
    .end local v15           #je:Ljava/util/jar/JarEntry;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    :catch_1
    move-exception v9

    move-object v3, v4

    .line 205
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/lang/RuntimeException;
    :goto_a
    :try_start_c
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 206
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_d

    .line 213
    :try_start_d
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_d
    if-eqz v12, :cond_8

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_6

    .line 218
    :catch_2
    move-exception v9

    .line 220
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v11       #i:I
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v15       #je:Ljava/util/jar/JarEntry;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 166
    .end local v9           #e:Ljava/io/IOException;
    :cond_e
    :try_start_e
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    aget-object v27, v23, v11

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v27, v24, v11

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v17           #nByteCount:I
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object v13, v12

    .end local v12           #is:Ljava/io/InputStream;
    .restart local v13       #is:Ljava/io/InputStream;
    goto/16 :goto_7

    .line 182
    .end local v11           #i:I
    .end local v13           #is:Ljava/io/InputStream;
    .end local v15           #je:Ljava/util/jar/JarEntry;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v17       #nByteCount:I
    :cond_f
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-virtual {v7, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_0

    .line 207
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    :catch_4
    move-exception v9

    move-object v3, v4

    .line 208
    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    .local v9, e:Ljava/security/NoSuchAlgorithmException;
    :goto_c
    :try_start_f
    const-string v25, "SysScopeVerifier"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Exception: "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 209
    const/16 v20, 0x0

    .line 212
    if-eqz v3, :cond_10

    .line 213
    :try_start_10
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_10
    if-eqz v12, :cond_8

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_6

    .line 218
    :catch_5
    move-exception v9

    .line 220
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_6
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 200
    .end local v9           #e:Ljava/io/IOException;
    :cond_11
    const/16 v20, 0x1

    .line 212
    if-eqz v4, :cond_12

    .line 213
    :try_start_11
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_12
    if-eqz v12, :cond_15

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_6

    .line 218
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    .restart local v9       #e:Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 220
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 210
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    .line 212
    :goto_d
    if-eqz v3, :cond_13

    .line 213
    :try_start_12
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    .line 215
    :cond_13
    if-eqz v12, :cond_14

    .line 216
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 222
    :cond_14
    :goto_e
    throw v25

    .line 218
    :catch_8
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 218
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v17       #nByteCount:I
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_9
    move-exception v9

    .line 220
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .end local v9           #e:Ljava/io/IOException;
    :cond_15
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_6

    .line 210
    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v17           #nByteCount:I
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v25

    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_d

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    :catchall_2
    move-exception v25

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_d

    .line 207
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_a
    move-exception v9

    goto :goto_c

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_b
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto :goto_c

    .line 204
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_c
    move-exception v9

    goto/16 :goto_a

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_d
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_a

    .line 201
    .end local v7           #digest:Ljava/security/MessageDigest;
    .end local v8           #digestB64String:Ljava/lang/String;
    .end local v10           #entries:Ljava/util/Enumeration;
    .end local v14           #it:Ljava/util/Iterator;
    .end local v16           #mf:Ljava/util/jar/Manifest;
    .end local v19           #readBuffer:[B
    .end local v23           #strKey:[Ljava/lang/String;
    .end local v24           #strValue:[Ljava/lang/String;
    :catch_e
    move-exception v9

    goto/16 :goto_5

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v7       #digest:Ljava/security/MessageDigest;
    .restart local v8       #digestB64String:Ljava/lang/String;
    .restart local v10       #entries:Ljava/util/Enumeration;
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v14       #it:Ljava/util/Iterator;
    .restart local v16       #mf:Ljava/util/jar/Manifest;
    .restart local v19       #readBuffer:[B
    .restart local v23       #strKey:[Ljava/lang/String;
    .restart local v24       #strValue:[Ljava/lang/String;
    :catch_f
    move-exception v9

    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #apkFile:Ljava/util/jar/JarFile;
    .restart local v3       #apkFile:Ljava/util/jar/JarFile;
    goto/16 :goto_5

    .end local v3           #apkFile:Ljava/util/jar/JarFile;
    .end local v12           #is:Ljava/io/InputStream;
    .restart local v4       #apkFile:Ljava/util/jar/JarFile;
    .restart local v11       #i:I
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v15       #je:Ljava/util/jar/JarEntry;
    :cond_16
    move-object v12, v13

    .end local v13           #is:Ljava/io/InputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    goto/16 :goto_b
.end method

.method private verifyWithPmKey()Z
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    const-string v1, "com.android.settings"

    const-string v2, "com.sec.android.app.sysscope"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final verifySysScopeService()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, apkPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/app/com.sec.android.app.sysscope-1.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v0, "/data/app/com.sec.android.app.sysscope-1.apk"

    .line 52
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->parseScopeApk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 53
    const-string v3, "SysScopeVerifier"

    const-string v4, "parse error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_1
    return v2

    .line 44
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const-string v3, "/data/app/com.sec.android.app.sysscope-2.apk"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    const-string v0, "/data/app/com.sec.android.app.sysscope-2.apk"

    goto :goto_0

    .line 48
    :cond_1
    const-string v0, "/system/app/SysScope.apk"

    goto :goto_0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeVerifier;->verifyWithPmKey()Z

    move-result v3

    if-nez v3, :cond_3

    .line 58
    const-string v3, "SysScopeVerifier"

    const-string v4, "verifyWithPmKey error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method
