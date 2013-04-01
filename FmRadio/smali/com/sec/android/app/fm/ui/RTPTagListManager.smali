.class public Lcom/sec/android/app/fm/ui/RTPTagListManager;
.super Ljava/lang/Object;
.source "RTPTagListManager.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static instance:Lcom/sec/android/app/fm/ui/RTPTagListManager;


# instance fields
.field private curRadioText:Ljava/lang/String;

.field private curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

.field private dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

.field private newMusic:Z

.field private preRadioText:Ljava/lang/String;

.field private tagListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    .line 14
    sput-object v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->instance:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-direct {v0}, Lcom/sec/android/app/fm/ui/RTPTagList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    .line 42
    invoke-static {p1}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->getMusicTags()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->preRadioText:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->newMusic:Z

    .line 48
    return-void
.end method

.method private addTagListArray(Lcom/sec/android/app/fm/ui/RTPTagList;)V
    .locals 4
    .parameter "tagList"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 98
    const-string v1, "addTagListArray"

    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Lcom/sec/android/app/fm/ui/RTPTagList;->haveTag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-direct {v0, v2, p1}, Lcom/sec/android/app/fm/ui/RTPTagList;-><init>(ILcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 101
    .local v0, newTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    const-string v1, "curTagList is removed from history array"

    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->delete(Lcom/sec/android/app/fm/ui/RTPTagList;)I

    move-result v1

    if-lez v1, :cond_1

    .line 104
    const-string v1, "curTagList is removed from DB"

    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->append(Lcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    .end local v0           #newTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    :cond_0
    return-void

    .line 107
    .restart local v0       #newTagList:Lcom/sec/android/app/fm/ui/RTPTagList;
    :cond_1
    const-string v1, "curTagList is not in DB. Something is wrong!!!"

    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "New list. Nothing is removed."

    invoke-static {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/fm/ui/RTPTagListManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    const-class v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->instance:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->instance:Lcom/sec/android/app/fm/ui/RTPTagListManager;

    .line 21
    sput-object p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    .line 23
    :cond_0
    sget-object v0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->instance:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 27
    const-string v0, "RTPTagListManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static setActiveContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 191
    sput-object p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    .line 192
    return-void
.end method


# virtual methods
.method public declared-synchronized addCurTagList(Landroid/content/Context;III)Z
    .locals 6
    .parameter "context"
    .parameter "tagCode"
    .parameter "startPos"
    .parameter "additionalLen"

    .prologue
    .line 51
    monitor-enter p0

    const/4 v2, 0x0

    .line 52
    .local v2, ret:Z
    :try_start_0
    const-string v4, "addCurTagList"

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    if-ne v4, p1, :cond_2

    .line 55
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curRadioText["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] startPos["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] additionalLen["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    add-int v5, p3, p4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, p3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, info:Ljava/lang/String;
    new-instance v3, Lcom/sec/android/app/fm/ui/RTPTag;

    invoke-direct {v3, p2, v1}, Lcom/sec/android/app/fm/ui/RTPTag;-><init>(ILjava/lang/String;)V

    .line 62
    .local v3, tag:Lcom/sec/android/app/fm/ui/RTPTag;
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/fm/ui/RTPTagList;->addTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    move-result v2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 66
    if-eqz v2, :cond_0

    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RTPTagList;->isMusicTag(Lcom/sec/android/app/fm/ui/RTPTag;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-boolean v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->newMusic:Z

    if-eqz v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    iget-object v5, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->append(Lcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 79
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->newMusic:Z

    .line 80
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->count()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 81
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->deleteLast()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    .end local v1           #info:Ljava/lang/String;
    .end local v3           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    .line 83
    .restart local v1       #info:Ljava/lang/String;
    .restart local v3       #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->dbAdapter:Lcom/sec/android/app/fm/data/RTPTagDBAdapter;

    iget-object v5, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/fm/data/RTPTagDBAdapter;->updateFirst(Lcom/sec/android/app/fm/ui/RTPTagList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 86
    .end local v1           #info:Ljava/lang/String;
    .end local v3           #tag:Lcom/sec/android/app/fm/ui/RTPTag;
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 51
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 92
    :cond_2
    :try_start_4
    const-string v4, "Context is different. so it\'s skipped"

    invoke-static {v4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public clearCurTagList()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "clearCurTagList"

    invoke-static {v0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addTagListArray(Lcom/sec/android/app/fm/ui/RTPTagList;)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/RTPTagList;->clear()V

    .line 122
    return-void
.end method

.method public getCurTagList()Lcom/sec/android/app/fm/ui/RTPTagList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curTagList:Lcom/sec/android/app/fm/ui/RTPTagList;

    return-object v0
.end method

.method public getTagListArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/fm/ui/RTPTagList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->tagListArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 3
    .parameter "tagCode"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 135
    sparse-switch p1, :sswitch_data_0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :sswitch_0
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    goto :goto_0

    .line 141
    :sswitch_1
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    goto :goto_0

    .line 145
    :sswitch_2
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 149
    :sswitch_3
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_0

    .line 153
    :sswitch_4
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    goto :goto_0

    .line 157
    :sswitch_5
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    goto :goto_0

    .line 162
    :sswitch_6
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    goto :goto_0

    .line 168
    :sswitch_7
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    goto :goto_0

    .line 175
    :sswitch_8
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    goto :goto_0

    .line 180
    :sswitch_9
    sget-object v1, Lcom/sec/android/app/fm/ui/RTPTagListManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    goto/16 :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x9 -> :sswitch_3
        0x1d -> :sswitch_4
        0x27 -> :sswitch_5
        0x29 -> :sswitch_6
        0x2a -> :sswitch_7
        0x2b -> :sswitch_8
        0x2c -> :sswitch_7
        0x2d -> :sswitch_8
        0x2e -> :sswitch_6
        0x2f -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x33 -> :sswitch_9
        0x35 -> :sswitch_9
    .end sparse-switch
.end method

.method public declared-synchronized setRadioText(Ljava/lang/String;)Z
    .locals 4
    .parameter "radioText"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 195
    monitor-enter p0

    const/4 v1, 0x0

    .line 196
    .local v1, ret:Z
    :try_start_0
    const-string v3, "setRadioText"

    invoke-static {v3}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->preRadioText:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 201
    .local v0, isNewRT:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "radioText["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] curRadioText["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] preRadioText["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->preRadioText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 204
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->newMusic:Z

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->preRadioText:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    const/4 v1, 0x1

    .line 216
    .end local v0           #isNewRT:Z
    :cond_1
    :goto_1
    monitor-exit p0

    return v1

    :cond_2
    move v0, v2

    .line 199
    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/fm/ui/RTPTagListManager;->curRadioText:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 209
    .restart local v0       #isNewRT:Z
    :cond_4
    const-string v2, "It\'s not new RT. So skipped."

    invoke-static {v2}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 195
    .end local v0           #isNewRT:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
