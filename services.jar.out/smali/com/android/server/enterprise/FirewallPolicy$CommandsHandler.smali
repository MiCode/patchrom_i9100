.class Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;
.super Landroid/os/Handler;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/FirewallPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1743
    iput-object p1, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 1747
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 1748
    .local v5, data:Landroid/os/Bundle;
    const-string v12, "command"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, command:Ljava/lang/String;
    const-string v12, "type"

    const/4 v13, -0x1

    invoke-virtual {v5, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1750
    .local v11, type:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1751
    .local v4, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, " "

    invoke-virtual {v1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1752
    .local v3, commandArray:[Ljava/lang/String;
    const-string v10, ""

    .line 1753
    .local v10, result:Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v2, v0, v7

    .line 1754
    .local v2, commandArg:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1757
    .end local v2           #commandArg:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v9

    .line 1759
    .local v9, process:Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 1760
    iget-object v12, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    invoke-static {v12, v9}, Lcom/android/server/enterprise/FirewallPolicy;->access$400(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v10

    .line 1761
    iget-object v12, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z
    invoke-static {v12, v10}, Lcom/android/server/enterprise/FirewallPolicy;->access$500(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1762
    iget-object v12, p0, Lcom/android/server/enterprise/FirewallPolicy$CommandsHandler;->this$0:Lcom/android/server/enterprise/FirewallPolicy;

    #calls: Lcom/android/server/enterprise/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V
    invoke-static {v12, v1, v11}, Lcom/android/server/enterprise/FirewallPolicy;->access$600(Lcom/android/server/enterprise/FirewallPolicy;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1769
    .end local v9           #process:Ljava/lang/Process;
    :cond_1
    :goto_1
    return-void

    .line 1764
    :catch_0
    move-exception v6

    .line 1765
    .local v6, e:Ljava/io/IOException;
    const-string v12, "FirewallPolicy"

    const-string v13, "IOException iptables command failed "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1766
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 1767
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v12, "FirewallPolicy"

    const-string v13, "InterruptedException iptables command failed "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
