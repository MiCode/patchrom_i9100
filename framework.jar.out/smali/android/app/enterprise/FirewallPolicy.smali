.class public Landroid/app/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static final ALLOW:I = 0x1

.field private static final DENY:I = 0x2

.field private static final LOCATION:I = 0x4

.field private static final PROXY:I = 0x3

.field private static final REROUTE:I = 0x0

.field private static final REROUTE_DEST:I = 0x5

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/app/enterprise/IFirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "firewall_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IFirewallPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IFirewallPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    .line 40
    iput-object p1, p0, Landroid/app/enterprise/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private checkEmptyList(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 765
    if-nez p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return v0

    .line 768
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 771
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkEntries(ILjava/lang/String;)Z
    .locals 20
    .parameter "type"
    .parameter "rule"

    .prologue
    .line 775
    const-string v13, "(.*[a-zA-Z]+.*)|(^\\*$)"

    .line 776
    .local v13, regexDomain:Ljava/lang/String;
    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 777
    .local v14, regexIp:Ljava/lang/String;
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 778
    .local v15, regexPort:Ljava/lang/String;
    const-string v16, "^(remote|local|\\*)$"

    .line 780
    .local v16, regexPortLocation:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 795
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    .line 798
    .local v10, parcialResult:Z
    const/4 v6, 0x0

    .local v6, hosts:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 799
    .local v12, ports:[Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 801
    .local v8, index:I
    if-lez v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 802
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, allHosts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 804
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 805
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 806
    const/4 v10, 0x0

    .line 840
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v6           #hosts:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #parcialResult:Z
    .end local v12           #ports:[Ljava/lang/String;
    :goto_1
    return v10

    .line 782
    :pswitch_1
    move-object v13, v14

    .line 783
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 784
    goto :goto_0

    .line 786
    :pswitch_2
    const-string v13, "(.*[a-zA-Z]+.*)"

    .line 787
    goto :goto_0

    .line 789
    :pswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    .line 791
    :pswitch_4
    move-object v13, v14

    goto :goto_0

    .line 809
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v6       #hosts:[Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #parcialResult:Z
    .restart local v12       #ports:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, allPorts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 811
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 812
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 813
    const/4 v10, 0x0

    goto :goto_1

    .line 817
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v3           #allPorts:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 820
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v3       #allPorts:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_4

    .line 821
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_5

    aget-object v5, v4, v7

    .line 822
    .local v5, host:Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 823
    if-nez v10, :cond_3

    .line 824
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 821
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 828
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_4
    const/4 v10, 0x0

    .line 830
    :cond_5
    if-eqz v12, :cond_7

    .line 831
    move-object v4, v12

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v9, :cond_8

    aget-object v11, v4, v7

    .line 832
    .local v11, port:Ljava/lang/String;
    if-ltz v8, :cond_6

    if-eqz v10, :cond_6

    .line 833
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 831
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 837
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #port:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    .line 839
    :cond_8
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 780
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private splitStrings(ILjava/util/List;)Z
    .locals 7
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 728
    const/4 v0, 0x1

    .line 730
    .local v0, finalResult:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 731
    .local v3, rule:Ljava/lang/String;
    if-nez v3, :cond_1

    move v0, v4

    .line 761
    .end local v0           #finalResult:Z
    .end local v3           #rule:Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 734
    .restart local v0       #finalResult:Z
    .restart local v3       #rule:Ljava/lang/String;
    :cond_1
    packed-switch p1, :pswitch_data_0

    move v0, v4

    .line 758
    goto :goto_1

    .line 736
    :pswitch_0
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 737
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 738
    .local v2, index:I
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 739
    const/4 v5, 0x5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 740
    goto :goto_0

    .end local v2           #index:I
    :cond_2
    move v0, v4

    .line 741
    goto :goto_1

    .line 746
    :pswitch_1
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 747
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 748
    .restart local v2       #index:I
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 749
    const/4 v5, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 750
    goto :goto_0

    .end local v2           #index:I
    :cond_3
    move v0, v4

    .line 751
    goto :goto_1

    .line 755
    :pswitch_2
    invoke-direct {p0, p1, v3}, Landroid/app/enterprise/FirewallPolicy;->checkEntries(ILjava/lang/String;)Z

    move-result v5

    and-int/2addr v0, v5

    .line 756
    goto :goto_0

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const/4 v1, 0x0

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 72
    .local v1, ret:Z
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 110
    .local v1, ret:Z
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    const/4 v1, 0x0

    .line 147
    .local v1, ret:Z
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->addRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesAllowRules()Z
    .locals 4

    .prologue
    .line 583
    const/4 v1, 0x0

    .line 585
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllowRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 589
    :goto_0
    return v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesDenyRules()Z
    .locals 4

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanDenyRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 612
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesProxyRules()Z
    .locals 4

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 674
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanProxyRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 678
    :goto_0
    return v1

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cleanIptablesRerouteRules()Z
    .locals 4

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 631
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanRerouteRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 635
    :goto_0
    return v1

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesAllowRules()Ljava/util/List;
    .locals 4
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
    .line 286
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules... 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllowRules()Ljava/util/List;

    move-result-object v1

    .line 291
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-object v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesDenyRules()Ljava/util/List;
    .locals 4
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
    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getDenyRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 317
    :goto_0
    return-object v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesOption()Z
    .locals 4

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 405
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyOption()Z
    .locals 4

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 424
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->isEnabledProxy()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 428
    :goto_0
    return v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesProxyRules()Ljava/util/List;
    .locals 4
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
    .line 355
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getProxyRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRerouteRules()Ljava/util/List;
    .locals 4
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
    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getRerouteRules()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIptablesRules()Ljava/util/List;
    .locals 4
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
    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v1, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->getAllRulesForUid()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Application"

    const-string/jumbo v3, "removeIptablesAllowRules..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 186
    :cond_1
    const/4 v1, 0x0

    .line 188
    .local v1, ret:Z
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const/4 v1, 0x0

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    const/4 v1, 0x0

    .line 226
    .local v1, ret:Z
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 261
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 263
    :cond_1
    const/4 v1, 0x0

    .line 265
    .local v1, ret:Z
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->removeRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeIptablesRules()Z
    .locals 4

    .prologue
    .line 651
    const/4 v1, 0x0

    .line 653
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IFirewallPolicy;->cleanAllRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 657
    :goto_0
    return v1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesAllowRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const/4 v1, 0x0

    .line 464
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    const/4 v1, 0x0

    .line 458
    .local v1, ret:Z
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setAllowRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesDenyRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    const/4 v1, 0x0

    .line 500
    :cond_0
    :goto_0
    return v1

    .line 492
    :cond_1
    const/4 v1, 0x0

    .line 494
    .local v1, ret:Z
    const/4 v2, 0x2

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 495
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setDenyRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesOption(Z)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 694
    const/4 v1, 0x0

    .line 697
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableRules(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 701
    :goto_0
    return v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyOption(Z)Z
    .locals 4
    .parameter "status"

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 720
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->enableProxy(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 724
    :goto_0
    return v1

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 555
    const/4 v1, 0x0

    .line 558
    .local v1, ret:Z
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    const/4 v3, 0x3

    invoke-direct {p0, v3, v2}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    iget-object v3, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v3, p1, p2}, Landroid/app/enterprise/IFirewallPolicy;->setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 567
    .end local v2           #rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIptablesRerouteRules(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 527
    invoke-direct {p0, p1}, Landroid/app/enterprise/FirewallPolicy;->checkEmptyList(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v1

    .line 529
    :cond_1
    const/4 v1, 0x0

    .line 531
    .local v1, ret:Z
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/app/enterprise/FirewallPolicy;->splitStrings(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Landroid/app/enterprise/FirewallPolicy;->mService:Landroid/app/enterprise/IFirewallPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IFirewallPolicy;->setRerouteRules(Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
