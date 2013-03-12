.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$1;,
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 77
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 78
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 79
    new-instance v1, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-direct {v1, p0, v4}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 80
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 81
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-static {p1, v1, v3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-virtual {p0, v4}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 85
    .local v0, sci:Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0, v4, v4}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void

    .line 83
    .end local v0           #sci:Landroid/view/textservice/SpellCheckerInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    return-void
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 12
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 124
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.textservice.SpellCheckerService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x80

    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 126
    .local v7, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    .line 127
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 128
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 129
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 130
    .local v8, si:Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, compName:Landroid/content/ComponentName;
    const-string v9, "android.permission.BIND_TEXT_SERVICE"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 132
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.BIND_TEXT_SERVICE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    :try_start_0
    new-instance v6, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v6, p0, v5}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 140
    .local v6, sci:Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v9

    if-gtz v9, :cond_1

    .line 141
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping text service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": it does not contain subtypes."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 147
    .end local v6           #sci:Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 145
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6       #sci:Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 149
    .end local v6           #sci:Landroid/view/textservice/SpellCheckerInfo;
    :catch_1
    move-exception v2

    .line 150
    .local v2, e:Ljava/io/IOException;
    sget-object v9, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to load the spell checker "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 156
    .end local v1           #compName:Landroid/content/ComponentName;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    .end local v8           #si:Landroid/content/pm/ServiceInfo;
    :cond_2
    return-void
.end method

.method private findAvailSpellCheckerLocked(Ljava/lang/String;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 5
    .parameter "locale"
    .parameter "prefPackage"

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    .local v2, spellCheckersCount:I
    if-nez v2, :cond_1

    .line 162
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "no available spell checker services found"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    .line 179
    :cond_0
    :goto_0
    return-object v1

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 167
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 168
    .local v1, sci:Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v0           #i:I
    .end local v1           #sci:Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 177
    sget-object v3, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "more than one spell checker service found, picking first"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerInfo;

    move-object v1, v3

    goto :goto_0
.end method

.method private isSpellCheckerEnabledLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 507
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spell_checker_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 514
    .local v2, retval:Z
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    return v2

    .line 507
    .end local v2           #retval:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .locals 5
    .parameter "sciId"

    .prologue
    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 456
    .local v0, currentSci:Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 462
    .local v1, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "selected_spell_checker"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 464
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .locals 8
    .parameter "hashCode"

    .prologue
    .line 474
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 475
    .local v3, sci:Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    .line 476
    .local v4, tempHashCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 477
    invoke-virtual {v3, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 478
    move v4, p1

    .line 482
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 484
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "selected_spell_checker_subtype"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 489
    return-void

    .line 476
    .end local v1           #ident:J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .restart local v1       #ident:J
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    .local v0, ident:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "spell_checker_enabled"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    return-void

    .line 497
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 11
    .parameter "info"
    .parameter "locale"
    .parameter "tsListener"
    .parameter "scListener"
    .parameter "uid"
    .parameter "bundle"

    .prologue
    .line 360
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 361
    .local v9, sciId:Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 363
    .local v3, connection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    const-string v2, "android.service.textservice.SpellCheckerService"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v10, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 368
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v10, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get a spell checker service."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V

    .line 374
    .local v1, group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 520
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 523
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 530
    :try_start_0
    const-string v10, "Current Text Services Manager state:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const-string v10, "  Spell Checker Map:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 533
    .local v2, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 535
    .local v7, info:Landroid/view/textservice/SpellCheckerInfo;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "id="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "comp="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v1

    .line 539
    .local v1, NS:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 540
    invoke-virtual {v7, v5}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 541
    .local v9, st:Landroid/view/textservice/SpellCheckerSubtype;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Subtype #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "locale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "extraValue="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 547
    .end local v1           #NS:I
    .end local v2           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    .end local v5           #i:I
    .end local v7           #info:Landroid/view/textservice/SpellCheckerInfo;
    .end local v9           #st:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    const-string v10, "  Spell Checker Bind Groups:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 551
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 552
    .local v4, grp:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    const-string v10, "    "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mInternalConnection="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    #getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 556
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mSpellChecker="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 557
    iget-object v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 558
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mBound="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Z)V

    .line 559
    const-string v10, " mConnected="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, v4, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    .line 560
    #getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$800(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 561
    .local v0, NL:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 562
    #getter for: Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->access$800(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 563
    .local v8, listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    const-string v10, "      "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Listener #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mTsListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 565
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 566
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mScListener="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 567
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 568
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mGroup="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    #getter for: Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-static {v8}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->access$900(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 570
    const-string v10, "        "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "mScLocale="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    iget-object v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    const-string v10, " mUid="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v8, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 575
    .end local v0           #NL:I
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v4           #grp:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v5           #i:I
    .end local v8           #listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_4
    monitor-exit v11

    goto/16 :goto_0

    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 7
    .parameter "listener"

    .prologue
    .line 393
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 394
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v3, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 397
    .local v0, group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 405
    .end local v0           #group:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 401
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 402
    .local v4, removeSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 403
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 405
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    return-void
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 4
    .parameter "locale"

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "selected_spell_checker"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, curSpellCheckerId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    monitor-exit v2

    .line 196
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v2

    goto :goto_0

    .line 197
    .end local v0           #curSpellCheckerId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 14
    .parameter "locale"
    .parameter "allowImplicitlySelectedSubtype"

    .prologue
    .line 205
    iget-object v12, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 206
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "selected_spell_checker_subtype"

    invoke-static {v11, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 212
    .local v10, subtypeHashCodeStr:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v7

    .line 213
    .local v7, sci:Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 217
    :cond_0
    const/4 v8, 0x0

    monitor-exit v12

    .line 275
    :goto_0
    return-object v8

    .line 220
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 221
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    .local v3, hashCode:I
    :goto_1
    if-nez v3, :cond_3

    if-nez p2, :cond_3

    .line 226
    const/4 v8, 0x0

    monitor-exit v12

    goto :goto_0

    .line 276
    .end local v3           #hashCode:I
    .end local v7           #sci:Landroid/view/textservice/SpellCheckerInfo;
    .end local v10           #subtypeHashCodeStr:Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 223
    .restart local v7       #sci:Landroid/view/textservice/SpellCheckerInfo;
    .restart local v10       #subtypeHashCodeStr:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #hashCode:I
    goto :goto_1

    .line 228
    :cond_3
    const/4 v1, 0x0

    .line 229
    .local v1, candidateLocale:Ljava/lang/String;
    if-nez v3, :cond_5

    .line 231
    :try_start_1
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v13, "input_method"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    .line 234
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 236
    .local v2, currentInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, localeString:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 240
    move-object v1, v6

    .line 244
    .end local v2           #currentInputMethodSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6           #localeString:Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 246
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v0, 0x0

    .line 250
    .local v0, candidate:Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-ge v4, v11, :cond_9

    .line 251
    invoke-virtual {v7, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v8

    .line 252
    .local v8, scs:Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v3, :cond_8

    .line 253
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, scsLocale:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 255
    monitor-exit v12

    goto :goto_0

    .line 256
    :cond_6
    if-nez v0, :cond_7

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x2

    if-lt v11, v13, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 260
    move-object v0, v8

    .line 250
    .end local v9           #scsLocale:Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 263
    :cond_8
    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v11

    if-ne v11, v3, :cond_7

    .line 269
    monitor-exit v12

    goto/16 :goto_0

    .line 275
    .end local v8           #scs:Landroid/view/textservice/SpellCheckerSubtype;
    :cond_9
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v0

    goto/16 :goto_0
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 21
    .parameter "sciId"
    .parameter "locale"
    .parameter "tsListener"
    .parameter "scListener"
    .parameter "bundle"

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 344
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_2

    .line 287
    :cond_1
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "getSpellCheckerService: Invalid input."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 291
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    monitor-exit v20

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 294
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    .line 295
    .local v8, sci:Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 296
    .local v6, uid:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 298
    .local v14, bindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_5

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    move-result-object v18

    .line 302
    .local v18, recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_4

    .line 306
    monitor-exit v20

    goto :goto_0

    .line 308
    :cond_4
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    if-nez v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    iget-boolean v3, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 309
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string v3, "The state of the spell checker bind group is illegal."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 336
    .end local v14           #bindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v18           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    .local v16, ident:J
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v12, v6

    move-object/from16 v13, p5

    .line 338
    :try_start_2
    invoke-direct/range {v7 .. v13}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 341
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 343
    monitor-exit v20

    goto/16 :goto_0

    .line 308
    .end local v16           #ident:J
    .restart local v14       #bindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 311
    :cond_7
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    .line 317
    :try_start_4
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    move-object/from16 v0, p5

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v19

    .line 320
    .local v19, session:Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_8

    .line 321
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 322
    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 327
    :cond_8
    :try_start_6
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 329
    .end local v19           #session:Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v15

    .line 330
    .local v15, e:Landroid/os/RemoteException;
    :try_start_7
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting spell checker session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_2

    .line 341
    .end local v14           #bindGroup:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v15           #e:Landroid/os/RemoteException;
    .end local v18           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v16       #ident:J
    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 350
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "locale"
    .parameter "sciId"

    .prologue
    .line 410
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 418
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 419
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    return-void
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .locals 3
    .parameter "locale"
    .parameter "hashCode"

    .prologue
    .line 424
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 432
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V

    .line 433
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 446
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setSpellCheckerEnabledLocked(Z)V

    .line 447
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 74
    :cond_0
    return-void
.end method
