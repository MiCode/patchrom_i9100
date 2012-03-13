.class public Lcom/sec/android/app/callsetting/CallSetting;
.super Landroid/app/ListActivity;
.source "CallSetting.java"


# static fields
.field static final CLASS_NAME:[Ljava/lang/String;


# instance fields
.field mCallSettingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".allcalls.AllCalls"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".voicecall.VoiceCall"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".videocall.VideoCall"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/CallSetting;->CLASS_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    return-void
.end method

.method private getCallSettingList()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f07002f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f070030

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f070031

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f070032

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const v2, 0x7f070033

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    return-void
.end method

.method private toastSample(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 170
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 173
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/CallSetting;->getCallSettingList()V

    .line 56
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    iget-object v2, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/CallSetting;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/CallSetting;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 60
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 65
    iget-object v9, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const v10, 0x7f070032

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/callsetting/CallSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 69
    iget-object v9, p0, Lcom/sec/android/app/callsetting/CallSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/callsetting/CallSetting;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 73
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v4, err_builder:Landroid/app/AlertDialog$Builder;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    const v9, 0x1080027

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 76
    const v9, 0x7f0700d8

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    const v9, 0x7f0700d9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    const v9, 0x7f0700ae

    new-instance v10, Lcom/sec/android/app/callsetting/CallSetting$1;

    invoke-direct {v10, p0}, Lcom/sec/android/app/callsetting/CallSetting$1;-><init>(Lcom/sec/android/app/callsetting/CallSetting;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v9, Lcom/sec/android/app/callsetting/CallSetting$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/callsetting/CallSetting$2;-><init>(Lcom/sec/android/app/callsetting/CallSetting;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 149
    .end local v4           #err_builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/CallSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 99
    .local v2, context:Landroid/content/Context;
    :try_start_0
    const-string v9, "com.android.phone"

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 100
    .local v6, packageContext:Landroid/content/Context;
    const-string v9, "com.android.phone.FdnSetting"

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 101
    .local v8, program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "com.android.phone.MAIN"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v5}, Lcom/sec/android/app/callsetting/CallSetting;->setResult(ILandroid/content/Intent;)V

    .line 104
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/sec/android/app/callsetting/CallSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 105
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #packageContext:Landroid/content/Context;
    .end local v8           #program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 106
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NameNotFound"

    invoke-direct {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->toastSample(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 108
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "ClassNotFound"

    invoke-direct {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->toastSample(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :cond_2
    iget-object v9, p0, Lcom/sec/android/app/callsetting/CallSetting;->mCallSettingList:Ljava/util/ArrayList;

    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const v10, 0x7f070033

    invoke-virtual {p0, v10}, Lcom/sec/android/app/callsetting/CallSetting;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/CallSetting;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    .restart local v2       #context:Landroid/content/Context;
    :try_start_1
    const-string v9, "com.android.phone"

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 121
    .restart local v6       #packageContext:Landroid/content/Context;
    const-string v9, "com.android.phone.CallFeaturesSetting"

    const/4 v10, 0x0

    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 122
    .restart local v8       #program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "com.android.phone.MAIN"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v5}, Lcom/sec/android/app/callsetting/CallSetting;->setResult(ILandroid/content/Intent;)V

    .line 125
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/sec/android/app/callsetting/CallSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 126
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #packageContext:Landroid/content/Context;
    .end local v8           #program_class:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2
    move-exception v3

    .line 127
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "NameNotFound"

    invoke-direct {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->toastSample(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_3
    move-exception v3

    .line 129
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "ClassNotFound"

    invoke-direct {p0, v9}, Lcom/sec/android/app/callsetting/CallSetting;->toastSample(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :cond_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 140
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v7, "com.sec.android.app.callsetting"

    .line 141
    .local v7, pkg_name:Ljava/lang/String;
    const/4 v9, 0x3

    if-le p3, v9, :cond_4

    const/4 v1, 0x3

    .line 142
    .local v1, classPosition:I
    :goto_1
    sget-object v9, Lcom/sec/android/app/callsetting/CallSetting;->CLASS_NAME:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v7, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, className:Ljava/lang/String;
    const-string v9, "TEST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pkg name :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  Cls name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/CallSetting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #className:Ljava/lang/String;
    .end local v1           #classPosition:I
    :cond_4
    move v1, p3

    .line 141
    goto :goto_1
.end method
