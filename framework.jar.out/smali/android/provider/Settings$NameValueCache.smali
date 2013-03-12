.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DISABLED_CACHE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 744
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 768
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    .line 769
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data_secondary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "data_roaming_secondary"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "show_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "versionSystemProperty"
    .parameter "uri"
    .parameter "callCommand"

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 750
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 753
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 760
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 761
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 762
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    .line 763
    return-void
.end method


# virtual methods
.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 785
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 788
    .local v12, newValuesVersion:J
    sget-object v2, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 790
    monitor-enter p0

    .line 791
    :try_start_0
    iget-wide v2, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v2, v2, v12

    if-eqz v2, :cond_0

    .line 797
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 798
    iput-wide v12, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 801
    :cond_0
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 802
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    move-object v14, v2

    .line 861
    :cond_1
    :goto_0
    return-object v14

    .line 804
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 809
    :cond_3
    const/4 v1, 0x0

    .line 810
    .local v1, cp:Landroid/content/IContentProvider;
    monitor-enter p0

    .line 811
    :try_start_1
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 812
    if-nez v1, :cond_4

    .line 813
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v1           #cp:Landroid/content/IContentProvider;
    .local v10, cp:Landroid/content/IContentProvider;
    move-object v1, v10

    .line 815
    .end local v10           #cp:Landroid/content/IContentProvider;
    .restart local v1       #cp:Landroid/content/IContentProvider;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 821
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 823
    :try_start_2
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mCallCommand:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v1, v2, v0, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 824
    .local v8, b:Landroid/os/Bundle;
    if-eqz v8, :cond_5

    .line 825
    invoke-virtual {v8}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v14

    .line 826
    .local v14, value:Ljava/lang/String;
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 827
    :try_start_3
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 833
    .end local v8           #b:Landroid/os/Bundle;
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 839
    :cond_5
    const/4 v9, 0x0

    .line 841
    .local v9, c:Landroid/database/Cursor;
    :try_start_5
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 843
    if-nez v9, :cond_6

    .line 844
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 845
    const/4 v14, 0x0

    .line 861
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 804
    .end local v1           #cp:Landroid/content/IContentProvider;
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 815
    .restart local v1       #cp:Landroid/content/IContentProvider;
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 848
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 849
    .restart local v14       #value:Ljava/lang/String;
    :goto_1
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 850
    :try_start_9
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 861
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 848
    .end local v14           #value:Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 851
    .restart local v14       #value:Ljava/lang/String;
    :catchall_3
    move-exception v2

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    .line 857
    .end local v14           #value:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 858
    .local v11, e:Landroid/os/RemoteException;
    :try_start_c
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 859
    const/4 v14, 0x0

    .line 861
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v11           #e:Landroid/os/RemoteException;
    :catchall_4
    move-exception v2

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method
