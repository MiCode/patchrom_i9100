.class Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/OriginalSettings/TrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->access$2300(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    #calls: Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->access$2400(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v7

    .line 231
    .local v7, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v10

    .line 232
    .local v10, max:I
    const/4 v11, 0x0

    .line 233
    .local v11, progress:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 234
    .local v8, certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    .local v4, alias:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->access$2300(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v0

    invoke-virtual {v0, v4, v12}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 236
    .local v5, cert:Ljava/security/cert/X509Certificate;
    new-instance v0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->access$2300(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/OriginalSettings/TrustedCredentialsSettings$1;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    .end local v4           #alias:Ljava/lang/String;
    .end local v5           #cert:Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 244
    return-object v8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/OriginalSettings/TrustedCredentialsSettings$CertHolder;>;"
    const/4 v3, 0x0

    .line 255
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 256
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    .line 258
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->access$2000(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 259
    .local v0, content:Landroid/view/View;
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 262
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/OriginalSettings/TrustedCredentialsSettings;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings;->access$2000(Lcom/android/OriginalSettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 224
    .local v0, content:Landroid/view/View;
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->access$2200(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 225
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2100(Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;

    move-result-object v1

    #getter for: Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;->access$900(Lcom/android/OriginalSettings/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    .line 226
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 227
    iget-object v1, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progressAndMax"

    .prologue
    .line 247
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 248
    .local v1, progress:I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, max:I
    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 253
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
