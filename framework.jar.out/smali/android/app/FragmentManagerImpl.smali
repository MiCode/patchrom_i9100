.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 420
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 421
    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 423
    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .prologue
    .line 1279
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1283
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1284
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_1
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 1
    .parameter "transit"

    .prologue
    .line 1959
    const/4 v0, 0x0

    .line 1960
    .local v0, rev:I
    sparse-switch p0, :sswitch_data_0

    .line 1971
    :goto_0
    return v0

    .line 1962
    :sswitch_0
    const/16 v0, 0x2002

    .line 1963
    goto :goto_0

    .line 1965
    :sswitch_1
    const/16 v0, 0x1001

    .line 1966
    goto :goto_0

    .line 1968
    :sswitch_2
    const/16 v0, 0x1003

    goto :goto_0

    .line 1960
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 1976
    const/4 v0, -0x1

    .line 1977
    .local v0, animAttr:I
    sparse-switch p0, :sswitch_data_0

    .line 1994
    :goto_0
    return v0

    .line 1979
    :sswitch_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1982
    :goto_1
    goto :goto_0

    .line 1979
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1984
    :sswitch_1
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 1987
    :goto_2
    goto :goto_0

    .line 1984
    :cond_1
    const/4 v0, 0x3

    goto :goto_2

    .line 1989
    :sswitch_2
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_3
    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_3

    .line 1977
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1003 -> :sswitch_2
        0x2002 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1431
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1434
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1436
    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 4
    .parameter "fragment"
    .parameter "moveToStateNow"

    .prologue
    const/4 v3, 0x1

    .line 1099
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1102
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    .line 1104
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1105
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1108
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1109
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1111
    :cond_2
    if-eqz p2, :cond_3

    .line 1112
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    .line 1115
    :cond_3
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 506
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 5
    .parameter "bse"

    .prologue
    .line 1309
    monitor-enter p0

    .line 1310
    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1311
    :cond_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1314
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1315
    .local v0, index:I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    monitor-exit p0

    move v1, v0

    .line 1323
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    return v1

    .line 1320
    .end local v1           #index:I
    :cond_3
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1321
    .restart local v0       #index:I
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_4
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1323
    monitor-exit p0

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 1325
    .end local v1           #index:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public attachActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1789
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1790
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1791
    return-void
.end method

.method public attachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1205
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    .line 1207
    iput-boolean v5, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1208
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    .line 1209
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1212
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    iput-boolean v3, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1214
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1215
    iput-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1217
    :cond_2
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1220
    :cond_3
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    .prologue
    .line 432
    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1187
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1189
    iput-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    .line 1190
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_3

    .line 1192
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1195
    :cond_1
    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    .line 1196
    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1198
    :cond_2
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 1199
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1202
    :cond_3
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1803
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1804
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1805
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1833
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1834
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1835
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1836
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1837
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1841
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1925
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1926
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1927
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1928
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-eqz v2, :cond_0

    .line 1929
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1930
    const/4 v2, 0x1

    .line 1935
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 1926
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1935
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1798
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1799
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1800
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1866
    const/4 v3, 0x0

    .line 1867
    .local v3, show:Z
    const/4 v2, 0x0

    .line 1868
    .local v2, newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1869
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1870
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1871
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v4, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_1

    .line 1872
    const/4 v3, 0x1

    .line 1873
    invoke-virtual {v0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1874
    if-nez v2, :cond_0

    .line 1875
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1877
    .restart local v2       #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1882
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 1883
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1884
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1885
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1886
    :cond_3
    invoke-virtual {v0}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    .line 1883
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1891
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_5
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1893
    return v3
.end method

.method public dispatchDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1827
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1828
    invoke-virtual {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1829
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    .line 1830
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 3

    .prologue
    .line 1844
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1845
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1846
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1847
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1848
    invoke-virtual {v0}, Landroid/app/Fragment;->onLowMemory()V

    .line 1845
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1852
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 1911
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1912
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1913
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1914
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 1915
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1916
    const/4 v2, 0x1

    .line 1921
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 1912
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1921
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 1939
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1940
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1941
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1942
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 1943
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1940
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1947
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    .prologue
    .line 1818
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1819
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    .line 1897
    const/4 v2, 0x0

    .line 1898
    .local v2, show:Z
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1899
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1900
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1901
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 1902
    const/4 v2, 0x1

    .line 1903
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1899
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1907
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return v2
.end method

.method public dispatchResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1813
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1814
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1815
    return-void
.end method

.method public dispatchStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1808
    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1809
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1810
    return-void
.end method

.method public dispatchStop()V
    .locals 2

    .prologue
    .line 1822
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1823
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1855
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1856
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1857
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1858
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1859
    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 1856
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1863
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 572
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, innerPrefix:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 576
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 577
    .local v0, N:I
    if-lez v0, :cond_1

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 579
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 580
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 582
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 583
    .local v2, f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 584
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 585
    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 581
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 592
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 593
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 594
    .restart local v0       #N:I
    if-lez v0, :cond_2

    .line 595
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 597
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 598
    .restart local v2       #f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 599
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 604
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 605
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 606
    .restart local v0       #N:I
    if-lez v0, :cond_3

    .line 607
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 609
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 610
    .restart local v2       #f:Landroid/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 616
    .end local v0           #N:I
    .end local v2           #f:Landroid/app/Fragment;
    .end local v3           #i:I
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 617
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 618
    .restart local v0       #N:I
    if-lez v0, :cond_4

    .line 619
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 621
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 622
    .local v1, bs:Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 623
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 629
    .end local v0           #N:I
    .end local v1           #bs:Landroid/app/BackStackRecord;
    .end local v3           #i:I
    :cond_4
    monitor-enter p0

    .line 630
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 631
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 632
    .restart local v0       #N:I
    if-lez v0, :cond_5

    .line 633
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v0, :cond_5

    .line 635
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 636
    .restart local v1       #bs:Landroid/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 637
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 642
    .end local v0           #N:I
    .end local v1           #bs:Landroid/app/BackStackRecord;
    .end local v3           #i:I
    :cond_5
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 643
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    .line 649
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 650
    .restart local v0       #N:I
    if-lez v0, :cond_7

    .line 651
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    if-ge v3, v0, :cond_7

    .line 653
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 654
    .local v5, r:Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 655
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 646
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #r:Ljava/lang/Runnable;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 660
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 662
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 663
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 664
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_8

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 668
    :cond_8
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 669
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 673
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 676
    :cond_a
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 2
    .parameter "action"
    .parameter "allowStateLoss"

    .prologue
    .line 1290
    if-nez p2, :cond_0

    .line 1291
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1293
    :cond_0
    monitor-enter p0

    .line 1294
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1297
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1300
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1301
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1302
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1303
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1305
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    return-void
.end method

.method public execPendingActions()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 1368
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v6, :cond_0

    .line 1369
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Recursive entry to executePendingTransactions"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1371
    :cond_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v6, :cond_2

    move v0, v5

    .line 1419
    :cond_1
    :goto_0
    return v0

    .line 1374
    :cond_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v7, v7, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_3

    .line 1375
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must be called from main thread of process"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1378
    :cond_3
    const/4 v0, 0x0

    .line 1383
    .local v0, didSomething:Z
    :goto_1
    monitor-enter p0

    .line 1384
    :try_start_0
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_6

    .line 1385
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    iget-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v6, :cond_1

    .line 1407
    const/4 v3, 0x0

    .line 1408
    .local v3, loadersRunning:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 1409
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1410
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_5

    iget-object v6, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v6, :cond_5

    .line 1411
    iget-object v6, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v3, v6

    .line 1408
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1388
    .end local v1           #f:Landroid/app/Fragment;
    .end local v2           #i:I
    .end local v3           #loadersRunning:Z
    :cond_6
    :try_start_1
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1389
    .local v4, numActions:I
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v6, v6

    if-ge v6, v4, :cond_8

    .line 1390
    :cond_7
    new-array v6, v4, [Ljava/lang/Runnable;

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1392
    :cond_8
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1393
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1394
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v6, v6, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1395
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1397
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1398
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    if-ge v2, v4, :cond_9

    .line 1399
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v6, v6, v2

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 1400
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 1398
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1395
    .end local v2           #i:I
    .end local v4           #numActions:I
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1402
    .restart local v2       #i:I
    .restart local v4       #numActions:I
    :cond_9
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1403
    const/4 v0, 0x1

    .line 1404
    goto :goto_1

    .line 1414
    .end local v4           #numActions:I
    .restart local v3       #loadersRunning:Z
    :cond_a
    if-nez v3, :cond_1

    .line 1415
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1416
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 3
    .parameter "id"

    .prologue
    .line 1223
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1225
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1226
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1227
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1

    .line 1241
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-object v0

    .line 1225
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1232
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1234
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 1235
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1236
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    iget v2, v0, Landroid/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_0

    .line 1234
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1241
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "tag"

    .prologue
    .line 1245
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 1247
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1248
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1249
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1263
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_0
    :goto_1
    return-object v0

    .line 1247
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1254
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 1256
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_4

    .line 1257
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1258
    .restart local v0       #f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1256
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1263
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "who"

    .prologue
    .line 1267
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 1268
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1269
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1270
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :goto_1
    return-object v0

    .line 1268
    .restart local v0       #f:Landroid/app/Fragment;
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1275
    .end local v0           #f:Landroid/app/Fragment;
    .end local v1           #i:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public freeBackStackIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1354
    monitor-enter p0

    .line 1355
    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1356
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1359
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    monitor-exit p0

    .line 1362
    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1
    .parameter "index"

    .prologue
    .line 501
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .parameter "bundle"
    .parameter "key"

    .prologue
    const/4 v2, -0x1

    .line 530
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 531
    .local v1, index:I
    if-ne v1, v2, :cond_1

    .line 532
    const/4 v0, 0x0

    .line 543
    :cond_0
    return-object v0

    .line 534
    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 535
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 538
    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 539
    .local v0, f:Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 540
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hideFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x1

    .line 1135
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_3

    .line 1137
    iput-boolean v5, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1138
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1139
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1141
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_4

    .line 1142
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1145
    move-object v1, p1

    .line 1146
    .local v1, finalFragment:Landroid/app/Fragment;
    new-instance v2, Landroid/app/FragmentManagerImpl$6;

    invoke-direct {v2, p0, v1}, Landroid/app/FragmentManagerImpl$6;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1154
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1159
    .end local v0           #anim:Landroid/animation/Animator;
    .end local v1           #finalFragment:Landroid/app/Fragment;
    :cond_1
    :goto_0
    iget-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1160
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1162
    :cond_2
    invoke-virtual {p1, v5}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1164
    :cond_3
    return-void

    .line 1156
    .restart local v0       #anim:Landroid/animation/Animator;
    :cond_4
    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 1951
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1952
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1956
    :goto_0
    return-void

    .line 1954
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 7
    .parameter "fragment"
    .parameter "transit"
    .parameter "enter"
    .parameter "transitionStyle"

    .prologue
    const/4 v4, 0x0

    .line 680
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v5}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    .line 682
    .local v1, animObj:Landroid/animation/Animator;
    if-eqz v1, :cond_0

    .line 718
    .end local v1           #animObj:Landroid/animation/Animator;
    :goto_0
    return-object v1

    .line 686
    .restart local v1       #animObj:Landroid/animation/Animator;
    :cond_0
    iget v5, p1, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_1

    .line 687
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v6, p1, Landroid/app/Fragment;->mNextAnim:I

    invoke-static {v5, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 688
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 689
    goto :goto_0

    .line 693
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_1
    if-nez p2, :cond_2

    move-object v1, v4

    .line 694
    goto :goto_0

    .line 697
    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v3

    .line 698
    .local v3, styleIndex:I
    if-gez v3, :cond_3

    move-object v1, v4

    .line 699
    goto :goto_0

    .line 702
    :cond_3
    if-nez p4, :cond_4

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 703
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget p4, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 705
    :cond_4
    if-nez p4, :cond_5

    move-object v1, v4

    .line 706
    goto :goto_0

    .line 709
    :cond_5
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    sget-object v6, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v5, p4, v6}, Landroid/app/Activity;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 711
    .local v2, attrs:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 712
    .local v0, anim:I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 714
    if-nez v0, :cond_6

    move-object v1, v4

    .line 715
    goto :goto_0

    .line 718
    :cond_6
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_0
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1065
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1070
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1073
    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1074
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1080
    :goto_1
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1077
    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->setIndex(I)V

    .line 1078
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1084
    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 1096
    :goto_0
    return-void

    .line 1088
    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1090
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1091
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1093
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->invalidateFragmentIndex(I)V

    .line 1095
    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    goto :goto_0
.end method

.method moveToState(IIIZ)V
    .locals 8
    .parameter "newState"
    .parameter "transit"
    .parameter "transitStyle"
    .parameter "always"

    .prologue
    const/4 v5, 0x0

    .line 1021
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No activity"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1025
    :cond_0
    if-nez p4, :cond_2

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_2

    .line 1051
    :cond_1
    :goto_0
    return-void

    .line 1029
    :cond_2
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    .line 1030
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1031
    const/4 v7, 0x0

    .line 1032
    .local v7, loadersRunning:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 1033
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1034
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 1035
    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1036
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 1037
    iget-object v0, v1, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    or-int/2addr v7, v0

    .line 1032
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1042
    .end local v1           #f:Landroid/app/Fragment;
    :cond_4
    if-nez v7, :cond_5

    .line 1043
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1046
    :cond_5
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1047
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1048
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0
.end method

.method moveToState(IZ)V
    .locals 1
    .parameter "newState"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .line 1017
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1018
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6
    .parameter "f"

    .prologue
    const/4 v3, 0x0

    .line 1013
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1014
    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 10
    .parameter "f"
    .parameter "newState"
    .parameter "transit"
    .parameter "transitionStyle"
    .parameter "keepActive"

    .prologue
    .line 736
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    .line 737
    const/4 p2, 0x1

    .line 739
    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le p2, v0, :cond_1

    .line 741
    iget p2, p1, Landroid/app/Fragment;->mState:I

    .line 745
    :cond_1
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    if-le p2, v0, :cond_2

    .line 746
    const/4 p2, 0x3

    .line 748
    :cond_2
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-ge v0, p2, :cond_1a

    .line 752
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Landroid/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_3

    .line 1010
    :goto_0
    return-void

    .line 755
    :cond_3
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_4

    .line 760
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 761
    iget v2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 763
    :cond_4
    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1009
    :cond_5
    :goto_1
    iput p2, p1, Landroid/app/Fragment;->mState:I

    goto :goto_0

    .line 765
    :pswitch_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_6
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    .line 767
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 769
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 771
    iget-object v0, p1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_7

    .line 772
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 775
    :cond_7
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 777
    iget-boolean v0, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_8

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 779
    const/4 v0, 0x3

    if-le p2, v0, :cond_8

    .line 780
    const/4 p2, 0x3

    .line 784
    :cond_8
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iput-object v0, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 785
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mFragments:Landroid/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 787
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 788
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_9

    .line 789
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_9
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 794
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_a

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 796
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 797
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_a

    .line 798
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    .line 803
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    .line 807
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 809
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 810
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 811
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    :cond_b
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 816
    :cond_c
    :pswitch_1
    const/4 v0, 0x1

    if-le p2, v0, :cond_15

    .line 817
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_d
    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_12

    .line 819
    const/4 v7, 0x0

    .line 820
    .local v7, container:Landroid/view/ViewGroup;
    iget v0, p1, Landroid/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_e

    .line 821
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget v1, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #container:Landroid/view/ViewGroup;
    check-cast v7, Landroid/view/ViewGroup;

    .line 822
    .restart local v7       #container:Landroid/view/ViewGroup;
    if-nez v7, :cond_e

    iget-boolean v0, p1, Landroid/app/Fragment;->mRestored:Z

    if-nez v0, :cond_e

    .line 823
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_e
    iput-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 829
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v7, v1}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 831
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 832
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 833
    if-eqz v7, :cond_10

    .line 834
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    .line 836
    .local v6, anim:Landroid/animation/Animator;
    if-eqz v6, :cond_f

    .line 837
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 838
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 840
    :cond_f
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 842
    .end local v6           #anim:Landroid/animation/Animator;
    :cond_10
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_11

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 843
    :cond_11
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 847
    .end local v7           #container:Landroid/view/ViewGroup;
    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 848
    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 849
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_13

    .line 850
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_13
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 854
    invoke-virtual {p1}, Landroid/app/Fragment;->restoreViewState()V

    .line 856
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 860
    :cond_15
    :pswitch_2
    const/4 v0, 0x3

    if-le p2, v0, :cond_17

    .line 861
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 863
    invoke-virtual {p1}, Landroid/app/Fragment;->performStart()V

    .line 864
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_17

    .line 865
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 870
    :cond_17
    :pswitch_3
    const/4 v0, 0x4

    if-le p2, v0, :cond_5

    .line 871
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveto RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    .line 874
    invoke-virtual {p1}, Landroid/app/Fragment;->onResume()V

    .line 875
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_19

    .line 876
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 881
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_1

    .line 884
    :cond_1a
    iget v0, p1, Landroid/app/Fragment;->mState:I

    if-le v0, p2, :cond_5

    .line 885
    iget v0, p1, Landroid/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 958
    :cond_1b
    :goto_2
    :pswitch_4
    const/4 v0, 0x1

    if-ge p2, v0, :cond_5

    .line 959
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1c

    .line 960
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_1c

    .line 967
    iget-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 968
    .restart local v6       #anim:Landroid/animation/Animator;
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 969
    invoke-virtual {v6}, Landroid/animation/Animator;->cancel()V

    .line 972
    .end local v6           #anim:Landroid/animation/Animator;
    :cond_1c
    iget-object v0, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_28

    .line 977
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 978
    const/4 p2, 0x1

    goto/16 :goto_1

    .line 887
    :pswitch_5
    const/4 v0, 0x5

    if-ge p2, v0, :cond_1f

    .line 888
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom RESUMED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 890
    invoke-virtual {p1}, Landroid/app/Fragment;->onPause()V

    .line 891
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1e

    .line 892
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mResumed:Z

    .line 898
    :cond_1f
    :pswitch_6
    const/4 v0, 0x4

    if-ge p2, v0, :cond_21

    .line 899
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom STARTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 901
    invoke-virtual {p1}, Landroid/app/Fragment;->performStop()V

    .line 902
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_21

    .line 903
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_21
    :pswitch_7
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1b

    .line 910
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_22
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 914
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_23

    .line 915
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 918
    :cond_23
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 919
    invoke-virtual {p1}, Landroid/app/Fragment;->performDestroyView()V

    .line 920
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_24

    .line 921
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_24
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_27

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_27

    .line 925
    const/4 v6, 0x0

    .line 926
    .restart local v6       #anim:Landroid/animation/Animator;
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_25

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_25

    .line 927
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v6

    .line 930
    :cond_25
    if-eqz v6, :cond_26

    .line 931
    iget-object v7, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 932
    .restart local v7       #container:Landroid/view/ViewGroup;
    iget-object v9, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    .line 933
    .local v9, view:Landroid/view/View;
    move-object v8, p1

    .line 934
    .local v8, fragment:Landroid/app/Fragment;
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 935
    iput-object v6, p1, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    .line 936
    iput p2, p1, Landroid/app/Fragment;->mStateAfterAnimating:I

    .line 937
    new-instance v0, Landroid/app/FragmentManagerImpl$5;

    invoke-direct {v0, p0, v7, v9, v8}, Landroid/app/FragmentManagerImpl$5;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;)V

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 948
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 949
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 952
    .end local v7           #container:Landroid/view/ViewGroup;
    .end local v8           #fragment:Landroid/app/Fragment;
    .end local v9           #view:Landroid/view/View;
    :cond_26
    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 954
    .end local v6           #anim:Landroid/animation/Animator;
    :cond_27
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 955
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    goto/16 :goto_2

    .line 980
    :cond_28
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_29
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2a

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 983
    invoke-virtual {p1}, Landroid/app/Fragment;->onDestroy()V

    .line 984
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2a

    .line 985
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 990
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    .line 991
    invoke-virtual {p1}, Landroid/app/Fragment;->onDetach()V

    .line 992
    iget-boolean v0, p1, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2b

    .line 993
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    :cond_2b
    if-nez p5, :cond_5

    .line 997
    iget-boolean v0, p1, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_2c

    .line 998
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto/16 :goto_1

    .line 1000
    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 1001
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    goto/16 :goto_1

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 885
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 1794
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1795
    return-void
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 6
    .parameter "f"

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_0

    .line 723
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_1

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 728
    :cond_1
    iput-boolean v3, p1, Landroid/app/Fragment;->mDeferStart:Z

    .line 729
    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_0
.end method

.method public popBackStack()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Landroid/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 447
    return-void
.end method

.method public popBackStack(II)V
    .locals 3
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 474
    if-gez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    new-instance v0, Landroid/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$4;-><init>(Landroid/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 482
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 458
    new-instance v0, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 463
    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 452
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 453
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 487
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 488
    if-gez p1, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    .line 468
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 469
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 11
    .parameter "handler"
    .parameter "name"
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1439
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    .line 1498
    :cond_0
    :goto_0
    return v9

    .line 1442
    :cond_1
    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_2

    .line 1443
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1444
    .local v4, last:I
    if-ltz v4, :cond_0

    .line 1447
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1448
    .local v1, bss:Landroid/app/BackStackRecord;
    invoke-virtual {v1, v8}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1449
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    .end local v1           #bss:Landroid/app/BackStackRecord;
    .end local v4           #last:I
    :goto_1
    move v9, v8

    .line 1498
    goto :goto_0

    .line 1451
    :cond_2
    const/4 v3, -0x1

    .line 1452
    .local v3, index:I
    if-nez p2, :cond_3

    if-ltz p3, :cond_9

    .line 1455
    :cond_3
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1456
    :goto_2
    if-ltz v3, :cond_4

    .line 1457
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1458
    .restart local v1       #bss:Landroid/app/BackStackRecord;
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1466
    .end local v1           #bss:Landroid/app/BackStackRecord;
    :cond_4
    if-ltz v3, :cond_0

    .line 1469
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_9

    .line 1470
    add-int/lit8 v3, v3, -0x1

    .line 1472
    :goto_3
    if-ltz v3, :cond_9

    .line 1473
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    .line 1474
    .restart local v1       #bss:Landroid/app/BackStackRecord;
    if-eqz p2, :cond_5

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    if-ltz p3, :cond_9

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p3, v6, :cond_9

    .line 1476
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 1477
    goto :goto_3

    .line 1461
    :cond_7
    if-ltz p3, :cond_8

    iget v6, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-eq p3, v6, :cond_4

    .line 1464
    :cond_8
    add-int/lit8 v3, v3, -0x1

    .line 1465
    goto :goto_2

    .line 1483
    .end local v1           #bss:Landroid/app/BackStackRecord;
    :cond_9
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1488
    .local v5, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_4
    if-le v2, v3, :cond_a

    .line 1489
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 1491
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1492
    .local v0, LAST:I
    const/4 v2, 0x0

    :goto_5
    if-gt v2, v0, :cond_d

    .line 1493
    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_b
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BackStackRecord;

    if-ne v2, v0, :cond_c

    move v7, v8

    :goto_6
    invoke-virtual {v6, v7}, Landroid/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1492
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    move v7, v9

    .line 1494
    goto :goto_6

    .line 1496
    :cond_d
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 521
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;II)V
    .locals 7
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1118
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nesting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v0

    .line 1120
    .local v6, inactive:Z
    :goto_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_1

    if-eqz v6, :cond_4

    .line 1121
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1122
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1124
    :cond_2
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1125
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1127
    :cond_3
    iput-boolean v5, p1, Landroid/app/Fragment;->mAdded:Z

    .line 1128
    iput-boolean v0, p1, Landroid/app/Fragment;->mRemoving:Z

    .line 1129
    if-eqz v6, :cond_6

    move v2, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    .line 1132
    :cond_4
    return-void

    .end local v6           #inactive:Z
    :cond_5
    move v6, v5

    .line 1119
    goto :goto_0

    .restart local v6       #inactive:Z
    :cond_6
    move v2, v0

    .line 1129
    goto :goto_1
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 514
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .prologue
    .line 1423
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1424
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1425
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1428
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "state"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, nonConfig:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1686
    if-nez p1, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1687
    check-cast v2, Landroid/app/FragmentManagerState;

    .line 1688
    .local v2, fms:Landroid/app/FragmentManagerState;
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-eqz v5, :cond_0

    .line 1692
    if-eqz p2, :cond_4

    .line 1693
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1694
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1695
    .local v1, f:Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_2
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iget v6, v1, Landroid/app/Fragment;->mIndex:I

    aget-object v3, v5, v6

    .line 1697
    .local v3, fs:Landroid/app/FragmentState;
    iput-object v1, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1698
    iput-object v8, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1699
    iput v9, v1, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1700
    iput-boolean v9, v1, Landroid/app/Fragment;->mInLayout:Z

    .line 1701
    iput-boolean v9, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1702
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1703
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1704
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1705
    iget-object v5, v3, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1693
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1713
    .end local v1           #f:Landroid/app/Fragment;
    .end local v3           #fs:Landroid/app/FragmentState;
    .end local v4           #i:I
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1714
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 1715
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1717
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 1718
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v3, v5, v4

    .line 1719
    .restart local v3       #fs:Landroid/app/FragmentState;
    if-eqz v3, :cond_7

    .line 1720
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/FragmentState;->instantiate(Landroid/app/Activity;)Landroid/app/Fragment;

    move-result-object v1

    .line 1721
    .restart local v1       #f:Landroid/app/Fragment;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_6
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    iput-object v8, v3, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    .line 1717
    .end local v1           #f:Landroid/app/Fragment;
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1728
    :cond_7
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_8
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 1731
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1733
    :cond_9
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding avail #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_a
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1739
    .end local v3           #fs:Landroid/app/FragmentState;
    :cond_b
    if-eqz p2, :cond_e

    .line 1740
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 1741
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1742
    .restart local v1       #f:Landroid/app/Fragment;
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v5, :cond_c

    .line 1743
    iget v5, v1, Landroid/app/Fragment;->mTargetIndex:I

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 1744
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v6, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    iput-object v5, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 1740
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1746
    :cond_d
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    iput-object v8, v1, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    goto :goto_5

    .line 1755
    .end local v1           #f:Landroid/app/Fragment;
    :cond_e
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v5, :cond_11

    .line 1756
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1757
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    .line 1758
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 1759
    .restart local v1       #f:Landroid/app/Fragment;
    if-nez v1, :cond_f

    .line 1760
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No instantiated fragment for index #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1763
    :cond_f
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/app/Fragment;->mAdded:Z

    .line 1764
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: making added #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_10
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1768
    .end local v1           #f:Landroid/app/Fragment;
    :cond_11
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1772
    :cond_12
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v5, :cond_15

    .line 1773
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1774
    const/4 v4, 0x0

    :goto_7
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1775
    iget-object v5, v2, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v0

    .line 1776
    .local v0, bse:Landroid/app/BackStackRecord;
    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: adding bse #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    :cond_13
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_14

    .line 1780
    iget v5, v0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v0}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    .line 1774
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1784
    .end local v0           #bse:Landroid/app/BackStackRecord;
    :cond_15
    iput-object v8, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    const/4 v1, 0x0

    .line 1503
    .local v1, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1504
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1505
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1506
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_1

    .line 1507
    if-nez v1, :cond_0

    .line 1508
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    .restart local v1       #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/Fragment;>;"
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/app/Fragment;->mRetaining:Z

    .line 1512
    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v3, v3, Landroid/app/Fragment;->mIndex:I

    :goto_1
    iput v3, v0, Landroid/app/Fragment;->mTargetIndex:I

    .line 1513
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "retainNonConfig: keeping retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1512
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .line 1517
    .end local v0           #f:Landroid/app/Fragment;
    .end local v2           #i:I
    :cond_3
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 1572
    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1574
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1576
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_1

    .line 1577
    :cond_0
    const/4 v6, 0x0

    .line 1680
    :goto_0
    return-object v6

    .line 1581
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1582
    .local v1, N:I
    new-array v2, v1, [Landroid/app/FragmentState;

    .line 1583
    .local v2, active:[Landroid/app/FragmentState;
    const/4 v8, 0x0

    .line 1584
    .local v8, haveFragments:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v1, :cond_8

    .line 1585
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    .line 1586
    .local v5, f:Landroid/app/Fragment;
    if-eqz v5, :cond_6

    .line 1587
    iget v11, v5, Landroid/app/Fragment;->mIndex:I

    if-gez v11, :cond_2

    .line 1588
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: active "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has cleared index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1590
    .local v10, msg:Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const-string v11, "  "

    const/4 v12, 0x0

    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Landroid/util/LogWriter;

    const/4 v15, 0x6

    const-string v16, "FragmentManager"

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v17}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1593
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1596
    .end local v10           #msg:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x1

    .line 1598
    new-instance v7, Landroid/app/FragmentState;

    invoke-direct {v7, v5}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    .line 1599
    .local v7, fs:Landroid/app/FragmentState;
    aput-object v7, v2, v9

    .line 1601
    iget v11, v5, Landroid/app/Fragment;->mState:I

    if-lez v11, :cond_7

    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_7

    .line 1602
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v11

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1604
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v11, :cond_5

    .line 1605
    iget-object v11, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    if-gez v11, :cond_3

    .line 1606
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has target not in fragment manager: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1608
    .restart local v10       #msg:Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    const-string v11, "  "

    const/4 v12, 0x0

    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Landroid/util/LogWriter;

    const/4 v15, 0x6

    const-string v16, "FragmentManager"

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v17}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1611
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1613
    .end local v10           #msg:Ljava/lang/String;
    :cond_3
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v11, :cond_4

    .line 1614
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1616
    :cond_4
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_state"

    iget-object v13, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 1618
    iget v11, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v11, :cond_5

    .line 1619
    iget-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v12, "android:target_req_state"

    iget v13, v5, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1629
    :cond_5
    :goto_2
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_6

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Saved state of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    .end local v7           #fs:Landroid/app/FragmentState;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1626
    .restart local v7       #fs:Landroid/app/FragmentState;
    :cond_7
    iget-object v11, v5, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v11, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_2

    .line 1634
    .end local v5           #f:Landroid/app/Fragment;
    .end local v7           #fs:Landroid/app/FragmentState;
    :cond_8
    if-nez v8, :cond_a

    .line 1635
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_9

    const-string v11, "FragmentManager"

    const-string/jumbo v12, "saveAllState: no fragments!"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1639
    :cond_a
    const/4 v3, 0x0

    .line 1640
    .local v3, added:[I
    const/4 v4, 0x0

    .line 1643
    .local v4, backStack:[Landroid/app/BackStackState;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v11, :cond_d

    .line 1644
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1645
    if-lez v1, :cond_d

    .line 1646
    new-array v3, v1, [I

    .line 1647
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_d

    .line 1648
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    iget v11, v11, Landroid/app/Fragment;->mIndex:I

    aput v11, v3, v9

    .line 1649
    aget v11, v3, v9

    if-gez v11, :cond_b

    .line 1650
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure saving state: active "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has cleared index: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v3, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1652
    .restart local v10       #msg:Ljava/lang/String;
    const-string v11, "FragmentManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const-string v11, "  "

    const/4 v12, 0x0

    new-instance v13, Ljava/io/PrintWriter;

    new-instance v14, Landroid/util/LogWriter;

    const/4 v15, 0x6

    const-string v16, "FragmentManager"

    const/16 v17, 0x3

    invoke-direct/range {v14 .. v17}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v13, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1655
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1657
    .end local v10           #msg:Ljava/lang/String;
    :cond_b
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_c

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding fragment #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1664
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v11, :cond_f

    .line 1665
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1666
    if-lez v1, :cond_f

    .line 1667
    new-array v4, v1, [Landroid/app/BackStackState;

    .line 1668
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v1, :cond_f

    .line 1669
    new-instance v12, Landroid/app/BackStackState;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/BackStackRecord;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v11}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v12, v4, v9

    .line 1670
    sget-boolean v11, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v11, :cond_e

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveAllState: adding back stack #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1676
    :cond_f
    new-instance v6, Landroid/app/FragmentManagerState;

    invoke-direct {v6}, Landroid/app/FragmentManagerState;-><init>()V

    .line 1677
    .local v6, fms:Landroid/app/FragmentManagerState;
    iput-object v2, v6, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    .line 1678
    iput-object v3, v6, Landroid/app/FragmentManagerState;->mAdded:[I

    .line 1679
    iput-object v4, v6, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    goto/16 :goto_0
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3
    .parameter "f"

    .prologue
    .line 1537
    const/4 v0, 0x0

    .line 1539
    .local v0, result:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1540
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1542
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1543
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1544
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1545
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1548
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1549
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    .line 1551
    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 1552
    if-nez v0, :cond_3

    .line 1553
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1555
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1558
    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    .line 1559
    if-nez v0, :cond_5

    .line 1560
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1563
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1566
    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 4
    .parameter "fragment"

    .prologue
    const/4 v1, 0x0

    .line 548
    iget v2, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v2, :cond_0

    .line 549
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 552
    :cond_0
    iget v2, p1, Landroid/app/Fragment;->mState:I

    if-lez v2, :cond_1

    .line 553
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 554
    .local v0, result:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 556
    .end local v0           #result:Landroid/os/Bundle;
    :cond_1
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 1521
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    .line 1525
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1529
    :goto_1
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1530
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1531
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1532
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1527
    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_1
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4
    .parameter "index"
    .parameter "bse"

    .prologue
    .line 1329
    monitor-enter p0

    .line 1330
    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1333
    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1334
    .local v0, N:I
    if-ge p1, v0, :cond_2

    .line 1335
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1350
    :goto_0
    monitor-exit p0

    .line 1351
    return-void

    .line 1338
    :cond_2
    :goto_1
    if-ge v0, p1, :cond_5

    .line 1339
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1343
    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1347
    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1350
    .end local v0           #N:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showFragment(Landroid/app/Fragment;II)V
    .locals 6
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1167
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    iget-boolean v1, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_4

    .line 1169
    iput-boolean v4, p1, Landroid/app/Fragment;->mHidden:Z

    .line 1170
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1171
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    .line 1173
    .local v0, anim:Landroid/animation/Animator;
    if-eqz v0, :cond_1

    .line 1174
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1175
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1177
    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    .end local v0           #anim:Landroid/animation/Animator;
    :cond_2
    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    .line 1180
    iput-boolean v5, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1182
    :cond_3
    invoke-virtual {p1, v4}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 1184
    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 3

    .prologue
    .line 1054
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 1062
    :cond_0
    return-void

    .line 1056
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1057
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 1058
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 1059
    invoke-virtual {p0, v0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 1056
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 562
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 566
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
