.class public Landroid/server/spell/SpellManagerService;
.super Landroid/app/ISpellManager$Stub;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/spell/SpellManagerService$1;,
        Landroid/server/spell/SpellManagerService$MyPackageMonitor;,
        Landroid/server/spell/SpellManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SpellManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/ISpellManager$Stub;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    .line 68
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;-><init>(Landroid/server/spell/SpellManagerService;Landroid/server/spell/SpellManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$100(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/server/spell/SpellManagerService;)Landroid/server/spell/SpellScrollScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getScanner()Landroid/server/spell/SpellScrollScanner;
    .locals 4

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v0, :cond_0

    .line 74
    const-string v0, "SpellManagerService"

    const-string v1, "Begin to scan for SpellScroll..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;-><init>(Landroid/server/spell/SpellManagerService;)V

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 78
    new-instance v0, Landroid/server/spell/SpellScrollScanner;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    .line 79
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    .line 81
    const-string v0, "SpellManagerService"

    const-string v1, "Finish to scan for SpellScroll..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 241
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SpellManagerService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v6, "SpellManagerService"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hashCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/spell/SpellManagerService;->getInformationHash()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v6, :cond_1

    .line 256
    const-string v6, "No spell scrolls found."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 262
    .local v2, origId:J
    array-length v6, p3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 263
    const/4 v6, 0x0

    aget-object v6, p3, v6

    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 264
    new-instance v6, Landroid/server/spell/SpellScrollScanner;

    iget-object v7, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    .line 265
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    .line 269
    :cond_2
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollList()Ljava/util/List;

    move-result-object v5

    .line 271
    .local v5, scrolls:Ljava/util/List;,"Ljava/util/List<Landroid/app/SpellScroll;>;"
    if-eqz v5, :cond_3

    .line 272
    const/4 v0, 0x1

    .line 274
    .local v0, i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SpellScroll;

    .line 275
    .local v4, scroll:Landroid/app/SpellScroll;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpellScroll #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v4, p2}, Landroid/app/SpellScroll;->dump(Ljava/io/PrintWriter;)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #scroll:Landroid/app/SpellScroll;
    :cond_3
    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SpellScrolls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 286
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public getInformationHash()I
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v0

    return v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 1
    .parameter "text"

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 2
    .parameter "spellScrollName"

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    .line 154
    .local v0, orig:Landroid/app/SpellScroll;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellById(J)Landroid/app/SpellScroll;
    .locals 3
    .parameter "spellId"

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 172
    .local v0, pair:Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/server/spell/SpellManagerService;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 176
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 206
    .local v1, orig:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v2

    .line 209
    .local v2, spell:Landroid/app/SpellScroll$Spell;
    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v0

    .line 211
    .local v0, copied:Landroid/app/SpellScroll;
    invoke-virtual {v0, v2}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    .line 217
    .end local v0           #copied:Landroid/app/SpellScroll;
    .end local v2           #spell:Landroid/app/SpellScroll$Spell;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpellNameById(J)Ljava/lang/String;
    .locals 2
    .parameter "spellId"

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 188
    .local v0, pair:Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    .line 166
    .local v0, orig:Landroid/app/SpellScroll;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SpellScroll;->getSpellNames()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 1
    .parameter "spellScrollName"

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNameById(J)Ljava/lang/String;
    .locals 2
    .parameter "spellId"

    .prologue
    .line 180
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 182
    .local v0, pair:Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .locals 1
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/server/spell/SpellScrollScanner;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .locals 1
    .parameter "spellScrollName"

    .prologue
    .line 144
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->isValidSpellScroll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
