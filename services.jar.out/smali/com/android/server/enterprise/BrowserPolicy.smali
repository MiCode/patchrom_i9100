.class public Lcom/android/server/enterprise/BrowserPolicy;
.super Landroid/app/enterprise/IBrowserPolicy$Stub;
.source "BrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowserPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/enterprise/IBrowserPolicy$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 77
    return-void
.end method

.method private enforceBrowserPermission()I
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/server/enterprise/BrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BROWSER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getBrowserSettingStatus(I)Z
    .locals 9
    .parameter "setting"

    .prologue
    const/16 v8, 0x8

    .line 205
    const/4 v2, 0x1

    .line 207
    .local v2, lEnabled:Z
    if-ne p1, v8, :cond_0

    .line 209
    const/4 v2, 0x0

    .line 215
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "BROWSER"

    const-string v7, "browserSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 221
    .local v4, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 223
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 225
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_1

    .line 227
    if-eq p1, v8, :cond_3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eq p1, v5, :cond_3

    .line 231
    const/4 v2, 0x0

    .line 260
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return v2

    .line 239
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #value:Ljava/lang/Integer;
    .restart local v4       #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v5, p1

    if-ne p1, v5, :cond_1

    .line 241
    const/4 v2, 0x1

    .line 243
    goto :goto_0

    .line 253
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #value:Ljava/lang/Integer;
    .end local v4           #values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "BrowserPolicy"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 271
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 278
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 298
    return-void
.end method

.method public setBrowserSettingStatus(ZI)Z
    .locals 10
    .parameter "enable"
    .parameter "setting"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/enterprise/BrowserPolicy;->enforceBrowserPermission()I

    move-result v1

    .line 136
    .local v1, callingUid:I
    const/4 v4, 0x0

    .line 138
    .local v4, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 147
    .local v5, token:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BROWSER"

    const-string v9, "browserSettings"

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 160
    .local v3, lValue:I
    :goto_0
    const/4 v7, 0x1

    if-ne v7, p1, :cond_0

    or-int/2addr v3, p2

    .line 164
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "BROWSER"

    const-string v9, "browserSettings"

    invoke-virtual {v7, v1, v8, v9, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 174
    iget-object v7, p0, Lcom/android/server/enterprise/BrowserPolicy;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 178
    .local v0, am:Landroid/app/ActivityManager;
    const-string v7, "com.android.browser"

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #lValue:I
    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return v4

    .line 153
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    const/16 v3, 0x17

    .restart local v3       #lValue:I
    goto :goto_0

    .line 160
    .end local v2           #e:Lcom/android/server/enterprise/EdmStorageProvider$SettingNotFoundException;
    :cond_0
    xor-int/lit8 v7, p2, -0x1

    and-int/2addr v3, v7

    goto :goto_1

    .line 180
    .end local v3           #lValue:I
    :catch_1
    move-exception v2

    .line 182
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "BrowserPolicy"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 289
    return-void
.end method
