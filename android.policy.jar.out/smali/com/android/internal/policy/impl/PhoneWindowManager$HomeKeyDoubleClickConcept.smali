.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyDoubleClickConcept"
.end annotation


# static fields
.field public static final TAG_HKDC:Ljava/lang/String; = "HomeKeyDoubleClick"


# instance fields
.field public final DEBUG:Z

.field private mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

.field private mHomeActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDelay:J

.field private mPosted:Z

.field private mSentHomeDownToApp:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8022
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8001
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 8002
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    .line 8003
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    .line 8005
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    .line 8008
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    .line 8023
    return-void

    :cond_0
    move v0, v1

    .line 8005
    goto :goto_0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 8000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8000
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    return-void
.end method

.method private doubleClickJob()V
    .locals 0

    .prologue
    .line 8212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->startVoiceCommandActivity()V

    .line 8213
    return-void
.end method

.method private isDoubleClick()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8069
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HomeKeyDoubleClick"

    const-string v3, "isDoubleClick() is called"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8072
    :cond_0
    monitor-enter p0

    .line 8073
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 8074
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 8078
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "HomeKeyDoubleClick"

    const-string v2, "in isDoubleClick() true"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8079
    :cond_1
    monitor-exit p0

    move v0, v1

    .line 8085
    :goto_0
    return v0

    .line 8082
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8084
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isDoubleClick() false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v2

    .line 8085
    goto :goto_0

    .line 8082
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSingleClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 8051
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HomeKeyDoubleClick"

    const-string v3, "isSingleClick() is called"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8054
    :cond_0
    monitor-enter p0

    .line 8055
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_3

    .line 8056
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 8058
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isSingleClick() true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8059
    :cond_2
    monitor-exit p0

    move v0, v2

    .line 8065
    :goto_0
    return v0

    .line 8062
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8064
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "HomeKeyDoubleClick"

    const-string v2, "in isSingleClick() false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v1

    .line 8065
    goto :goto_0

    .line 8062
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private printList()V
    .locals 5

    .prologue
    .line 8103
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 8104
    .local v0, buff:Ljava/lang/String;
    const-string v0, "list value = "

    .line 8106
    monitor-enter p0

    .line 8107
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 8108
    .local v2, size:I
    if-lez v2, :cond_0

    .line 8109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 8110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8114
    .end local v1           #i:I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8116
    :cond_1
    const-string v3, "HomeKeyDoubleClick"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8117
    monitor-exit p0

    .line 8118
    return-void

    .line 8117
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 8089
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "reset() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8090
    :cond_0
    monitor-enter p0

    .line 8091
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-eqz v0, :cond_1

    .line 8092
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8094
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 8095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 8096
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8097
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "HomeKeyDoubleClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in reset()  after reset, mPosted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mHomeActionList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8098
    :cond_2
    monitor-exit p0

    .line 8099
    return-void

    .line 8098
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private singleClickJob()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 8121
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "HomeKeyDoubleClick"

    const-string v8, "singleClickJob() is called."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8126
    :cond_0
    const/4 v1, 0x0

    .line 8127
    .local v1, incomingRinging:Z
    const/4 v2, 0x0

    .line 8131
    .local v2, incomingRinging2:Z
    const/4 v4, 0x0

    .line 8132
    .local v4, isVoIPRinging:Z
    const/4 v3, 0x0

    .line 8134
    .local v3, isAnyKeyMode:Z
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v6

    .line 8135
    .local v6, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v6, :cond_3

    .line 8136
    invoke-interface {v6}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 8144
    .end local v6           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "anykey_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_4

    .line 8145
    const/4 v3, 0x0

    .line 8151
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 8152
    .local v5, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_1

    .line 8153
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 8175
    .end local v5           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_2
    if-eqz v4, :cond_6

    .line 8178
    :try_start_2
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v6

    .line 8179
    .restart local v6       #voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v6, :cond_5

    .line 8180
    const-string v7, "WindowManager"

    const-string v8, "answerVoIPCall() is called."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8181
    invoke-interface {v6}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 8208
    .end local v6           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_2
    :goto_3
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 8209
    return-void

    .line 8138
    .restart local v6       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_3
    :try_start_3
    const-string v7, "WindowManager"

    const-string v8, "Unable to find IVoIPInterface interface"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 8140
    .end local v6           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 8141
    .local v0, ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8147
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 8160
    :catch_1
    move-exception v0

    .line 8161
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "RemoteException from getTelephonyService()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 8183
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v6       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_5
    :try_start_4
    const-string v7, "WindowManager"

    const-string v8, "Unable to find IVoIPInterface interface"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 8185
    .end local v6           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_2
    move-exception v0

    .line 8186
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v7, "WindowManager"

    const-string v8, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 8191
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 8192
    :cond_7
    const-string v7, "WindowManager"

    const-string v8, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 8199
    :cond_8
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v7, :cond_a

    .line 8200
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "HomeKeyDoubleClick"

    const-string v8, "  in singleClickJob(), mSentHomeDownToApp is false. Now call launchHomeFromHotKey()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8201
    :cond_9
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_3

    .line 8203
    :cond_a
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "HomeKeyDoubleClick"

    const-string v8, "  in singleClickJob(), mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public addAction(IIZ)V
    .locals 4
    .parameter "action"
    .parameter "repeatCount"
    .parameter "canceled"

    .prologue
    .line 8026
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "HomeKeyDoubleClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAction() is called.  action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  canceled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8028
    :cond_0
    monitor-enter p0

    .line 8030
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8031
    monitor-exit p0

    .line 8048
    :goto_0
    return-void

    .line 8034
    :cond_1
    if-nez p3, :cond_2

    if-eqz p2, :cond_4

    .line 8035
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), action is canceled OR repeatCount is not zero. now call reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8036
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    .line 8037
    monitor-exit p0

    goto :goto_0

    .line 8047
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8040
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), now add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8041
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8043
    if-nez p1, :cond_7

    .line 8044
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), down event. now call postCheckRunnable()."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8045
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8047
    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setHomeDownEventSent()V
    .locals 1

    .prologue
    .line 8242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 8243
    return-void
.end method

.method public startVoiceCommandActivity()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8216
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MiuiKeyguardViewMediator;->isSecure()Z

    move-result v1

    .line 8217
    .local v1, isSecureLock:Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v3, :cond_4

    .line 8218
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8220
    :try_start_0
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "voicetalk launch"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8221
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 8222
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8223
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const-string v5, "AUTO_LISTEN"

    if-nez v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8224
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8225
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mVoiceTalkIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8238
    :cond_0
    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 8239
    return-void

    .end local v1           #isSecureLock:Z
    :cond_1
    move v1, v2

    .line 8216
    goto :goto_0

    .restart local v1       #isSecureLock:Z
    :cond_2
    move v3, v2

    .line 8223
    goto :goto_1

    .line 8226
    :catch_0
    move-exception v0

    .line 8227
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "Fail to launch voice talk"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8231
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "Device is not provisioned, not launch voicetalk."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 8234
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "HomeKeyDoubleClick"

    const-string v4, "in startVoiceCommandActivity(), Secure lock is off, but mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
