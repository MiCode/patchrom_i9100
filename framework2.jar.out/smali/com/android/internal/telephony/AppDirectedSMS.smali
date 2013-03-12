.class public final enum Lcom/android/internal/telephony/AppDirectedSMS;
.super Ljava/lang/Enum;
.source "AppDirectedSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/AppDirectedSMS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/AppDirectedSMS; = null

.field public static final enum INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS; = null

.field private static final TAG:Ljava/lang/String; = "AppDirectedSMS"


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/internal/telephony/AppDirectedSMS;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    sget-object v1, Lcom/android/internal/telephony/AppDirectedSMS;->INSTANCE:Lcom/android/internal/telephony/AppDirectedSMS;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    return-void
.end method

.method private checkIfSyncNConnectMessage(Ljava/lang/String;)Z
    .locals 4
    .parameter "msgBody"

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v1, "AppDirectedSMS"

    const-string v2, "[DirectedSMS] Checking if it is a SyncNConnect Message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, ret:Z
    const-string v1, "VZWPIN"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZWNMN"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZWUEP"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VZWRSC"

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    :cond_0
    const/4 v0, 0x1

    .line 124
    const-string v1, "AppDirectedSMS"

    const-string v2, "[DirectedSMS] SyncNConnect Message is received by the device"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    return v0
.end method

.method private checkifBackupAssistantSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 3
    .parameter "messagebody"
    .parameter "msginfo"

    .prologue
    .line 131
    const-string v1, "BUA-ADS"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 132
    .local v0, componentname:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p2, v0, p1}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-object p2

    .line 135
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 136
    const-string v1, "AppDirectedSMS"

    const-string v2, "[DirectedSMS] Backup Assistant package not found "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkifSyncNConnectSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 9
    .parameter "messagebody"
    .parameter "msginfo"

    .prologue
    .line 143
    const-string v3, ":"

    .line 144
    .local v3, colon:Ljava/lang/String;
    const/4 v4, 0x0

    .line 145
    .local v4, colonOffset:I
    const/4 v2, 0x0

    .line 146
    .local v2, appmsgbody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, appPrefix:Ljava/lang/String;
    const-string v0, "VZW"

    .line 148
    .local v0, SyncNConnectPrefixTest:Ljava/lang/String;
    const/4 v5, 0x0

    .line 149
    .local v5, componentname:Landroid/content/ComponentName;
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 150
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 152
    const-string v6, "AppDirectedSMS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DirectedSMS] SyncNConnect SMS Received AppPrefix is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 155
    if-eqz v5, :cond_1

    .line 156
    invoke-virtual {p2, v5, v2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-object p2

    .line 158
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 159
    const-string v6, "AppDirectedSMS"

    const-string v7, "[DirectedSMS] SyncNConnect package not found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkifVZWAppDirSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 13
    .parameter "messagebody"
    .parameter "msginfo"

    .prologue
    .line 167
    const-string v4, ":"

    .line 168
    .local v4, colon:Ljava/lang/String;
    const/4 v5, 0x0

    .line 169
    .local v5, colonOffset:I
    const/4 v2, 0x0

    .line 170
    .local v2, appmsgbody:Ljava/lang/String;
    const/4 v1, 0x0

    .line 171
    .local v1, appPrefix:Ljava/lang/String;
    const/4 v6, 0x0

    .line 172
    .local v6, componentname:Landroid/content/ComponentName;
    const-string v7, "//VZW"

    .line 173
    .local v7, dataAlertSmsPrefix:Ljava/lang/String;
    const-string v0, "com.verizon.directedAppSMS"

    .line 174
    .local v0, DIRECTED_SMS_META_DATA_NAME:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->findAppDirectedSMSPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_3

    .line 176
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 177
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 178
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p2, v6, v2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 180
    const-string v11, "AppDirectedSMS"

    const-string v12, "[DirectedSMS] //VZW appdirected SMS received "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-object p2

    .line 182
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 183
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 185
    .local v3, bundle:Landroid/os/Bundle;
    const/16 v11, 0x80

    :try_start_0
    invoke-virtual {v10, v6, v11}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    iget-object v3, v11, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 186
    if-nez v3, :cond_1

    .line 187
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget-object v3, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_1
    :goto_1
    const-string v11, "com.verizon.directedAppSMS"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 200
    .local v9, mOffset:I
    :goto_2
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {p2, v6, v2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setSuccesfulResult(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 202
    const-string v11, "AppDirectedSMS"

    const-string v12, "[DirectedSMS] //VZW PAYG SMS received "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v9           #mOffset:I
    :catch_0
    move-exception v8

    .line 190
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 191
    const-string v11, "AppDirectedSMS"

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int v9, v11, v12

    .restart local v9       #mOffset:I
    goto :goto_2

    .line 204
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v9           #mOffset:I
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_3
    if-eqz p1, :cond_4

    const/4 v11, 0x0

    invoke-virtual {p1, v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 205
    invoke-virtual {p2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setNoRegisteredComponent()V

    .line 206
    const-string v11, "AppDirectedSMS"

    const-string v12, "[DirectedSMS] //VZW  SMS no component "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_4
    const-string v11, "AppDirectedSMS"

    const-string v12, "[DirectedSMS] Not a App Directed SMS "

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAppDirectedSMSPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 22
    .parameter "messagebody"

    .prologue
    .line 279
    const-string v4, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    .line 280
    .local v4, DIRECTED_SMS_ACTION:Ljava/lang/String;
    const-string v5, "com.verizon.directedAppSMS"

    .line 281
    .local v5, DIRECTED_SMS_META_DATA_NAME:Ljava/lang/String;
    const-string v6, "com.verizon.permissions.appdirectedsms"

    .line 282
    .local v6, DIRECTED_SMS_PERMISSION_NAME:Ljava/lang/String;
    move-object/from16 v17, p1

    .line 283
    .local v17, smsmessagebody:Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v15, resolveIntent:Landroid/content/Intent;
    const-string v19, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS]findAppDirectedSMSPackage"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 288
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 289
    .local v14, queryResults:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_1

    .line 290
    :cond_0
    const/16 v19, 0x0

    .line 359
    :goto_0
    return-object v19

    .line 293
    :cond_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_7

    .line 294
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 295
    .local v16, ri:Landroid/content/pm/ResolveInfo;
    const/4 v11, 0x0

    .line 297
    .local v11, metaValue:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 299
    .local v12, packageName:Ljava/lang/String;
    const-string v19, "AppDirectedSMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DirectedSMS] Package="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", Receiver="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS] check permission"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.verizon.permissions.appdirectedsms"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;->verifyVZWAPPSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 293
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 308
    :cond_3
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS] check meta data from receiver"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v10, 0x0

    .line 311
    .local v10, metaDataValue:Ljava/lang/String;
    :try_start_0
    const-string v18, "//VZW"

    .line 312
    .local v18, substring:Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v3, Cn:Landroid/content/ComponentName;
    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-virtual {v13, v3, v0}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 314
    .local v7, bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    .line 315
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 316
    if-eqz v10, :cond_5

    .line 317
    const-string v19, "AppDirectedSMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DirectedSMS] check meta data from receiver"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 319
    const-string v19, "AppDirectedSMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DirectedSMS] check meta data from receiver"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_4

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 321
    :cond_4
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS] matched package is found !!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    .end local v3           #Cn:Landroid/content/ComponentName;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v18           #substring:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 329
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 330
    const-string v19, "AppDirectedSMS"

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS] check meta data from package"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v10, 0x0

    .line 337
    :try_start_1
    const-string v18, "//VZW"

    .line 338
    .restart local v18       #substring:Ljava/lang/String;
    const/16 v19, 0x80

    move/from16 v0, v19

    invoke-virtual {v13, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 339
    .restart local v7       #bundle:Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 340
    const-string v19, "com.verizon.directedAppSMS"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 341
    const-string v19, "AppDirectedSMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DirectedSMS] check meta data from package"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-eqz v10, :cond_2

    .line 343
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 344
    const-string v19, "AppDirectedSMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[DirectedSMS] check meta data from package"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 346
    :cond_6
    const-string v19, "AppDirectedSMS"

    const-string v20, "[DirectedSMS] matched pacakage is found !!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 353
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v18           #substring:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 355
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 356
    const-string v19, "AppDirectedSMS"

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 359
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10           #metaDataValue:Ljava/lang/String;
    .end local v11           #metaValue:Ljava/lang/String;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v16           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private findAppDirectedSMSPackageWithPrefix(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 18
    .parameter "appPrefix"

    .prologue
    .line 215
    const-string v3, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    .line 216
    .local v3, DIRECTED_SMS_ACTION:Ljava/lang/String;
    const-string v4, "com.verizon.directedAppSMS"

    .line 217
    .local v4, DIRECTED_SMS_META_DATA_NAME:Ljava/lang/String;
    const-string v5, "com.verizon.permissions.appdirectedsms"

    .line 219
    .local v5, DIRECTED_SMS_PERMISSION_NAME:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v13, resolveIntent:Landroid/content/Intent;
    const-string v15, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-virtual {v13, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS]findAppDirectedSMSPackageWithPrefix"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 224
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v15, 0x0

    invoke-virtual {v11, v13, v15}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 225
    .local v12, queryResults:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-gtz v15, :cond_1

    .line 226
    :cond_0
    const/4 v15, 0x0

    .line 275
    :goto_0
    return-object v15

    .line 229
    :cond_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_5

    .line 230
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v14, ri:Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 233
    .local v9, metaValue:Ljava/lang/String;
    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 235
    .local v10, packageName:Ljava/lang/String;
    const-string v15, "AppDirectedSMS"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[DiretedSMS] Package="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", Receiver="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS] check permission"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v16, "com.verizon.permissions.appdirectedsms"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->verifyVZWAPPSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 229
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 244
    :cond_3
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS] check meta data from receiver"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v15, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v2, Cn:Landroid/content/ComponentName;
    const/16 v15, 0x80

    invoke-virtual {v11, v2, v15}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v15

    iget-object v6, v15, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 248
    .local v6, bundle:Landroid/os/Bundle;
    const-string v15, "com.verizon.directedAppSMS"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v15, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->hasMatchedMetaData(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 249
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS] matched package is found !!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 253
    .end local v2           #Cn:Landroid/content/ComponentName;
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 255
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 256
    const-string v15, "AppDirectedSMS"

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS] check meta data from package"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v15, 0x80

    :try_start_1
    invoke-virtual {v11, v10, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget-object v6, v15, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 263
    .restart local v6       #bundle:Landroid/os/Bundle;
    const-string v15, "com.verizon.directedAppSMS"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v15, v1}, Lcom/android/internal/telephony/AppDirectedSMS;->hasMatchedMetaData(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 264
    const-string v15, "AppDirectedSMS"

    const-string v16, "[DiretedSMS] matched pacakage is found !!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 269
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_1
    move-exception v7

    .line 271
    .restart local v7       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 272
    const-string v15, "AppDirectedSMS"

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 275
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #metaValue:Ljava/lang/String;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v14           #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private hasMatchedMetaData(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "bundle"
    .parameter "metaDataName"
    .parameter "matchedValue"

    .prologue
    const/4 v1, 0x0

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, metaDataValue:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 410
    :cond_0
    const-string v2, "AppDirectedSMS"

    const-string v3, "getMetaDataFromBundle[] : invalid argument"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    :goto_0
    return v1

    .line 413
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    const-string v2, "AppDirectedSMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[meta_value]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 416
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private parseAndCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 5
    .parameter "messagebody"
    .parameter "originAddress"

    .prologue
    .line 94
    new-instance v2, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;-><init>(Lcom/android/internal/telephony/AppDirectedSMS;)V

    .line 95
    .local v2, msginfo:Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    const-string v0, "//F1"

    .line 96
    .local v0, BuASmsPrefix:Ljava/lang/String;
    const-string v1, "900080004007"

    .line 97
    .local v1, SSOSmsPrefix:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    const-string v3, "AppDirectedSMS"

    const-string v4, "[DirectedSMS] BuA SMS Received "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;->checkifBackupAssistantSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v2

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/AppDirectedSMS;->checkIfSyncNConnectMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string v3, "AppDirectedSMS"

    const-string v4, "[DirectedSMS] SyncNConnect SMS Received "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;->checkifSyncNConnectSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v2

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/AppDirectedSMS;->checkifVZWAppDirSMS(Ljava/lang/String;Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->getappdirsmsstatus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const-string v3, "AppDirectedSMS"

    const-string v4, "[DirectedSMS] SSO SMS Received "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {v2}, Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;->setssoSmsStatustrue()V

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/AppDirectedSMS;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/internal/telephony/AppDirectedSMS;->$VALUES:[Lcom/android/internal/telephony/AppDirectedSMS;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/AppDirectedSMS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/AppDirectedSMS;

    return-object v0
.end method

.method private verifyVZWAPPSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"
    .parameter "permPackageName"

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, callingPackageInfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 366
    .local v8, permissionPackageInfo:Landroid/content/pm/PackageInfo;
    iget-object v10, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 368
    .local v5, mPackageManager:Landroid/content/pm/PackageManager;
    const-string v10, "AppDirectedSMS"

    const-string v11, "Entered into verifySignature()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v10, "AppDirectedSMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "callingPackage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", permPackage:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v5, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 373
    const/16 v10, 0x40

    invoke-virtual {v5, p2, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 381
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    .line 382
    const-string v10, "AppDirectedSMS"

    const-string v11, "It is a preloaded application"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v10, 0x1

    .line 404
    :goto_0
    return v10

    .line 375
    :catch_0
    move-exception v2

    .line 376
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 377
    const-string v10, "AppDirectedSMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling NameNotFoundException "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v10, 0x0

    goto :goto_0

    .line 386
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 387
    .local v1, callingPackageSignatures:[Landroid/content/pm/Signature;
    if-eqz v1, :cond_3

    .line 389
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 391
    .local v9, permissionPackageSignatures:[Landroid/content/pm/Signature;
    array-length v6, v1

    .line 392
    .local v6, numberOfCallingPackageSignatures:I
    array-length v7, v9

    .line 394
    .local v7, numberOfPermissionPackageSignatures:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 395
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, v7, :cond_2

    .line 396
    aget-object v10, v1, v3

    aget-object v11, v9, v4

    invoke-virtual {v10, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 397
    const-string v10, "AppDirectedSMS"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Signature of the application matched with verizon provided signatures "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v1, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v10, 0x1

    goto :goto_0

    .line 395
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 394
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 403
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v6           #numberOfCallingPackageSignatures:I
    .end local v7           #numberOfPermissionPackageSignatures:I
    .end local v9           #permissionPackageSignatures:[Landroid/content/pm/Signature;
    :cond_3
    const-string v10, "AppDirectedSMS"

    const-string v11, "It is neither a preloaded app nor a post loaded app with correct signature"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v10, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkIfAppDirSMS(Ljava/lang/String;Lcom/android/internal/telephony/cdma/SmsMessage;Landroid/content/Context;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 1
    .parameter "messagebody"
    .parameter "sms"
    .parameter "context"

    .prologue
    .line 89
    iput-object p3, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    .line 90
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->parseAndCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public checkIfAppDirSMS(Ljava/lang/String;Lcom/android/internal/telephony/gsm/SmsMessage;Landroid/content/Context;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;
    .locals 1
    .parameter "messagebody"
    .parameter "sms"
    .parameter "context"

    .prologue
    .line 84
    iput-object p3, p0, Lcom/android/internal/telephony/AppDirectedSMS;->mcontext:Landroid/content/Context;

    .line 85
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/AppDirectedSMS;->parseAndCheck(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/AppDirectedSMS$AppMessageInfo;

    move-result-object v0

    return-object v0
.end method
