.class Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellCheckerBindGroup"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mBound:Z

.field public mConnected:Z

.field private final mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field public mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter "connection"
    .parameter "listener"
    .parameter "locale"
    .parameter "scListener"
    .parameter "uid"
    .parameter "bundle"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const-class v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    .line 584
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 593
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 596
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 597
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private cleanLocked()V
    .locals 4

    .prologue
    .line 690
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    .line 692
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #getter for: Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->access$1000(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, sciId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 694
    .local v0, cur:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-ne v0, p0, :cond_0

    .line 698
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$1100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->access$200(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mInternalConnection:Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 702
    .end local v0           #cur:Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1           #sciId:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .locals 12
    .parameter "tsListener"
    .parameter "locale"
    .parameter "scListener"
    .parameter "uid"
    .parameter "bundle"

    .prologue
    .line 631
    const/4 v9, 0x0

    .line 632
    .local v9, recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v10

    .line 635
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 636
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    invoke-virtual {v1, p3}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    move-object v0, v9

    .line 650
    .end local v8           #i:I
    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .end local v10           #size:I
    .local v0, recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_1
    return-object v1

    .line 635
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v8       #i:I
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v10       #size:I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 641
    :cond_1
    :try_start_2
    new-instance v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 643
    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_3
    invoke-interface {p3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 644
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 648
    .end local v8           #i:I
    .end local v10           #size:I
    :goto_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 649
    monitor-exit v11

    move-object v1, v0

    .line 650
    goto :goto_1

    .line 649
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catchall_0
    move-exception v1

    move-object v0, v9

    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_3
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3

    .line 645
    .end local v0           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v9       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catch_0
    move-exception v1

    move-object v0, v9

    .end local v9           #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    .restart local v0       #recipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    goto :goto_2

    .restart local v8       #i:I
    .restart local v10       #size:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V
    .locals 7
    .parameter "spellChecker"

    .prologue
    .line 604
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 606
    .local v2, listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_start_0
    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    iget-object v6, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5, v6}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v3

    .line 608
    .local v3, session:Lcom/android/internal/textservice/ISpellCheckerSession;
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :try_start_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 610
    iget-object v4, v2, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-interface {v4, v3}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V

    .line 612
    :cond_0
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 613
    .end local v3           #session:Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v5, "Exception in getting the spell checker session.Reconnect to the spellchecker. "

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 624
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #listener:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :goto_1
    return-void

    .line 620
    :cond_1
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 621
    :try_start_3
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 622
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    .line 623
    monitor-exit v5

    goto :goto_1

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public removeAll()V
    .locals 6

    .prologue
    .line 705
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->TAG:Ljava/lang/String;

    const-string v4, "Remove the spell checker bind unexpectedly."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 707
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 708
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 709
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 710
    .local v1, idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v3, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v3}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 708
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    .end local v1           #idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 713
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 714
    monitor-exit v4

    .line 715
    return-void

    .line 714
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 657
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->this$0:Lcom/android/server/TextServicesManagerService;

    #getter for: Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->access$100(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 658
    :try_start_0
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    .line 659
    .local v4, size:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 661
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 662
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 663
    .local v5, tempRecipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->hasSpellCheckerListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 667
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    .end local v5           #tempRecipient:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 671
    .local v3, removeSize:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    .line 675
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 676
    .local v1, idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    iget-object v6, v1, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-interface {v6}, Lcom/android/internal/textservice/ISpellCheckerSessionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v1, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 677
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 679
    .end local v1           #idr:Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->cleanLocked()V

    .line 680
    monitor-exit v7

    .line 681
    return-void

    .line 680
    .end local v0           #i:I
    .end local v2           #removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;>;"
    .end local v3           #removeSize:I
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
