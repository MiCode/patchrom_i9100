.class public final Lcom/android/server/pm/ChangeKeys;
.super Ljava/lang/Object;
.source "ChangeKeys.java"


# static fields
.field private static FLAG_FILE:Ljava/lang/String; = null

.field private static PUBLIC_KEYS_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChangeKeys"

.field private static TRIGGER_FILE:Ljava/lang/String;

.field private static sNewKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .line 24
    const-string v0, "/system/etc/need_to_change_keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "/system/etc/public.keys"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "/data/system/changed_flag"

    sput-object v0, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "ChangeKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 85
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "sb"
    .parameter "startStr"
    .parameter "endStr"

    .prologue
    const/4 v9, 0x1

    const/4 v11, -0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 30
    .local v8, startIdx:I
    if-eq v8, v11, :cond_1

    .line 31
    invoke-virtual {p0, p2, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 32
    .local v4, endIdx:I
    const-string v10, "key="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 34
    .local v5, key:I
    if-eq v5, v11, :cond_3

    if-ge v5, v4, :cond_3

    .line 36
    const-string v10, "<cert index="

    invoke-virtual {p0, v10, v8}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, certStart:I
    if-eq v2, v11, :cond_2

    .line 38
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, certEnd:I
    add-int/lit8 v10, v5, -0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, cert:Ljava/lang/String;
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v2, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, certkey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 46
    .local v7, newCertIdx:I
    if-eq v7, v11, :cond_0

    .line 47
    const-string v10, "\" />"

    invoke-virtual {p0, v10, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, newCertEndIdx:I
    const-string v10, "\" />"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v7, v10, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v6           #newCertEndIdx:I
    .end local v7           #newCertIdx:I
    :goto_0
    return v9

    .line 52
    .restart local v0       #cert:Ljava/lang/String;
    .restart local v1       #certEnd:I
    .restart local v2       #certStart:I
    .restart local v3       #certkey:Ljava/lang/String;
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    .restart local v7       #newCertIdx:I
    :cond_0
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find new cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #cert:Ljava/lang/String;
    .end local v1           #certEnd:I
    .end local v2           #certStart:I
    .end local v3           #certkey:Ljava/lang/String;
    .end local v4           #endIdx:I
    .end local v5           #key:I
    .end local v7           #newCertIdx:I
    :cond_1
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 54
    .restart local v2       #certStart:I
    .restart local v4       #endIdx:I
    .restart local v5       #key:I
    :cond_2
    const-string v9, "ChangeKeys"

    const-string v10, "Can\'t find cert element. Error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v2           #certStart:I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p0, v8, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private static deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "str"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, startIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    return-void
.end method

.method public static process()Z
    .locals 27

    .prologue
    .line 164
    new-instance v23, Ljava/io/File;

    sget-object v24, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-direct/range {v23 .. v24}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v23, triggerFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 166
    const-string v24, "ChangeKeys"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ChangeKeys : no "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/server/pm/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": ignore to run changekeys."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v24, 0x0

    .line 323
    :goto_0
    return v24

    .line 170
    :cond_0
    new-instance v12, Ljava/io/File;

    sget-object v24, Lcom/android/server/pm/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v12, flagFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 174
    const-string v24, "ChangeKeys"

    const-string v25, "Already did ChangeKeys before."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/16 v24, 0x0

    goto :goto_0

    .line 178
    :cond_1
    const-string v2, "packages.xml"

    .line 179
    .local v2, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v6, "/data/system/"

    .line 180
    .local v6, basePath:Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v21, packagesXmlFile:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_2

    .line 183
    const-string v6, "/dbdata/system/"

    .line 184
    new-instance v21, Ljava/io/File;

    .end local v21           #packagesXmlFile:Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v21       #packagesXmlFile:Ljava/io/File;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3

    .line 188
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : there is no packages.xml."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/16 v24, 0x0

    goto :goto_0

    .line 196
    :cond_3
    new-instance v13, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".journal"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v13, journalFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 198
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_4

    .line 199
    const-string v24, "ChangeKeys"

    const-string v25, "journalFile delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_4
    new-instance v3, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, backupFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 203
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_5

    .line 204
    const-string v24, "ChangeKeys"

    const-string v25, "backupFile delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_5
    move-object/from16 v0, v21

    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 207
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : error on backup packages.xml to packages.xml.bak."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 215
    :cond_6
    new-instance v22, Ljava/io/File;

    sget-object v24, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v22, publicKeysFile:Ljava/io/File;
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/FileReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 220
    .local v18, keyIn:Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 221
    .local v17, keyIdx:I
    :cond_7
    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, key:Ljava/lang/String;
    if-eqz v16, :cond_9

    .line 222
    const-string v24, "#"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 225
    rem-int/lit8 v24, v17, 0x2

    if-nez v24, :cond_8

    .line 226
    sget-object v24, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 228
    :cond_8
    sget-object v24, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 232
    .end local v16           #key:Ljava/lang/String;
    .end local v17           #keyIdx:I
    .end local v18           #keyIn:Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    .line 234
    .local v11, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 235
    const-string v24, "ChangeKeys"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ChangeKeys : no "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/android/server/pm/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": ignore to run changekeys."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 237
    .end local v11           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v10

    .line 239
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 240
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 246
    .end local v10           #e:Ljava/io/IOException;
    .restart local v16       #key:Ljava/lang/String;
    .restart local v17       #keyIdx:I
    .restart local v18       #keyIn:Ljava/io/BufferedReader;
    :cond_9
    sget-object v24, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    sget-object v25, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 247
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : mismatch count of keys"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 254
    :cond_a
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v0, v13, v3, v1}, Lcom/android/server/pm/ChangeKeys;->replaceKeys(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v9

    .line 255
    .local v9, changePackagesXml:Z
    const/4 v7, 0x1

    .line 256
    .local v7, changePackagesBackupXml:Z
    const/4 v8, 0x1

    .line 258
    .local v8, changePackagesMoreBackupXml:Z
    new-instance v19, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-backup.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .local v19, packagesBackupXmlFile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 260
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : starting replace on packages-backup.xml"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v14, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-backup.xml.journal"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v14, journalFileBackup:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 263
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_b

    .line 264
    const-string v24, "ChangeKeys"

    const-string v25, "journalFileBackup delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_b
    new-instance v4, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-backup.xml.bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v4, backupFileBackup:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 268
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_c

    .line 269
    const-string v24, "ChangeKeys"

    const-string v25, "backupFileBackup delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_c
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_11

    .line 273
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : error on backup packages-backup.xml to packages-backup.xml.bak."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v7, 0x0

    .line 281
    .end local v4           #backupFileBackup:Ljava/io/File;
    .end local v14           #journalFileBackup:Ljava/io/File;
    :cond_d
    :goto_3
    new-instance v20, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-more-backup.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v20, packagesMoreBackupXmlFile:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 283
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : starting replace on packages-more-backup.xml"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v15, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-more-backup.xml.journal"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v15, journalFileMoreBackup:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 286
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_e

    .line 287
    const-string v24, "ChangeKeys"

    const-string v25, "journalFileMoreBackup delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_e
    new-instance v5, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "packages-more-backup.xml.bak"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v5, backupFileMoreBackup:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 291
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v24

    if-nez v24, :cond_f

    .line 292
    const-string v24, "ChangeKeys"

    const-string v25, "backupFileMoreBackup delete fail!!"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_f
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 296
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : error on backup packages-more-backup.xml to packages-more-backup.xml.bak."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v8, 0x0

    .line 305
    .end local v5           #backupFileMoreBackup:Ljava/io/File;
    .end local v15           #journalFileMoreBackup:Ljava/io/File;
    :cond_10
    :goto_4
    if-eqz v9, :cond_13

    if-eqz v7, :cond_13

    if-eqz v8, :cond_13

    .line 307
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : succeed in changing keys from all xml files."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 323
    :goto_5
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 277
    .end local v20           #packagesMoreBackupXmlFile:Ljava/io/File;
    .restart local v4       #backupFileBackup:Ljava/io/File;
    .restart local v14       #journalFileBackup:Ljava/io/File;
    :cond_11
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-static {v0, v14, v4, v1}, Lcom/android/server/pm/ChangeKeys;->replaceKeys(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v7

    .line 278
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : replace on packages-backup.xml"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 300
    .end local v4           #backupFileBackup:Ljava/io/File;
    .end local v14           #journalFileBackup:Ljava/io/File;
    .restart local v5       #backupFileMoreBackup:Ljava/io/File;
    .restart local v15       #journalFileMoreBackup:Ljava/io/File;
    .restart local v20       #packagesMoreBackupXmlFile:Ljava/io/File;
    :cond_12
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-static {v0, v15, v5, v1}, Lcom/android/server/pm/ChangeKeys;->replaceKeys(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v8

    .line 301
    const-string v24, "ChangeKeys"

    const-string v25, "ChangeKeys : done replace on packages-more-backup.xml"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 312
    .end local v5           #backupFileMoreBackup:Ljava/io/File;
    .end local v15           #journalFileMoreBackup:Ljava/io/File;
    :catch_2
    move-exception v10

    .line 313
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 314
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v10

    .line 315
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 319
    .end local v10           #e:Ljava/io/IOException;
    :cond_13
    const-string v24, "ChangeKeys"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ChangeKeys : error on replaceKeys. "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method private static replaceKeys(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Z
    .locals 15
    .parameter "xmlFile"
    .parameter "journalFile"
    .parameter "backupFile"
    .parameter "isPackagesXmlFile"

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 93
    :cond_0
    const-string v12, "ChangeKeys"

    const-string v13, "replaceKeys: no xmlFile or backupFile"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v12, 0x0

    .line 159
    :goto_0
    return v12

    .line 97
    :cond_1
    const/4 v2, 0x0

    .line 99
    .local v2, changed:Z
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v13, "utf-8"

    invoke-direct {v6, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 101
    .local v6, in:Ljava/io/InputStreamReader;
    const/16 v12, 0x1000

    new-array v1, v12, [C

    .line 102
    .local v1, buf:[C
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 103
    .local v10, sb:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v6, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v8

    .local v8, nread:I
    const/4 v12, -0x1

    if-eq v8, v12, :cond_2

    .line 104
    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 153
    .end local v1           #buf:[C
    .end local v6           #in:Ljava/io/InputStreamReader;
    .end local v8           #nread:I
    .end local v10           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 154
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 159
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v12, 0x0

    goto :goto_0

    .line 106
    .restart local v1       #buf:[C
    .restart local v6       #in:Ljava/io/InputStreamReader;
    .restart local v8       #nread:I
    .restart local v10       #sb:Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 108
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    sget-object v12, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    .line 109
    sget-object v12, Lcom/android/server/pm/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 110
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 111
    .local v5, idx:I
    if-ltz v5, :cond_3

    .line 112
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int v13, v5, v12

    sget-object v12, Lcom/android/server/pm/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v5, v13, v12}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    const/4 v2, 0x1

    .line 108
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 117
    .end local v5           #idx:I
    .end local v7           #key:Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_6

    .line 118
    const-string v12, "<package name=\"com.sec.android.app.samsungapps\""

    const-string v13, "</package>"

    invoke-static {v10, v12, v13}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const-string v12, "<updated-package name=\"com.sec.android.app.samsungapps\""

    const-string v13, "</updated-package>"

    invoke-static {v10, v12, v13}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 120
    const-string v12, "<package name=\"com.sec.android.app.samsungapps.una\""

    const-string v13, "</package>"

    invoke-static {v10, v12, v13}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    const-string v12, "<updated-package name=\"com.sec.android.app.samsungapps.una\""

    const-string v13, "</updated-package>"

    invoke-static {v10, v12, v13}, Lcom/android/server/pm/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 122
    const-string v12, "<item name=\"com.sec.android.provider.una.astore.permission.READ\" package=\"com.sec.android.app.samsungapps.una\" />"

    invoke-static {v10, v12}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 123
    const-string v12, "<item name=\"com.sec.android.provider.una.astore.permission.WRITE\" package=\"com.sec.android.app.samsungapps.una\" />"

    invoke-static {v10, v12}, Lcom/android/server/pm/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 124
    if-eqz p3, :cond_6

    .line 125
    const-string v12, "/data/app/com.sec.android.app.samsungapps-1.apk"

    invoke-static {v12}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 126
    const-string v12, "/data/app/com.sec.android.app.samsungapps-2.apk"

    invoke-static {v12}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 127
    :cond_5
    const-string v12, "/data/app/com.sec.android.app.samsungapps.una-1.apk"

    invoke-static {v12}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 128
    const-string v12, "/data/app/com.sec.android.app.samsungapps.una-2.apk"

    invoke-static {v12}, Lcom/android/server/pm/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 132
    :cond_6
    new-instance v9, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v9, out:Ljava/io/FileOutputStream;
    new-instance v11, Ljava/io/OutputStreamWriter;

    const-string v12, "utf-8"

    invoke-direct {v11, v9, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 134
    .local v11, sout:Ljava/io/OutputStreamWriter;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V

    .line 136
    invoke-virtual {v11}, Ljava/io/OutputStreamWriter;->close()V

    .line 138
    if-eqz v2, :cond_8

    .line 139
    move-object/from16 v0, p1

    invoke-static {v0, p0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 140
    const-string v12, "ChangeKeys"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ChangeKeys : failed to copy "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p2

    invoke-static {v0, p0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 142
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 145
    :cond_7
    const-string v12, "ChangeKeys"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ChangeKeys : succeed in changing keys from"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_4
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 149
    :cond_8
    const-string v12, "ChangeKeys"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ChangeKeys: success process in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", but there is no old keys."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 155
    .end local v1           #buf:[C
    .end local v4           #i:I
    .end local v6           #in:Ljava/io/InputStreamReader;
    .end local v8           #nread:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .end local v11           #sout:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v3

    .line 156
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method
