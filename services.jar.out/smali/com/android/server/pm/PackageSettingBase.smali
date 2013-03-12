.class Lcom/android/server/pm/PackageSettingBase;
.super Lcom/android/server/pm/GrantedPermissions;
.source "PackageSettingBase.java"


# static fields
.field static final PKG_INSTALL_COMPLETE:I = 0x1

.field static final PKG_INSTALL_INCOMPLETE:I


# instance fields
.field codePath:Ljava/io/File;

.field codePathString:Ljava/lang/String;

.field private disabledComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private enabled:Landroid/util/SparseIntArray;

.field private enabledComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field firstInstallTime:J

.field haveGids:Z

.field installStatus:I

.field installerPackageName:Ljava/lang/String;

.field lastUpdateTime:J

.field final name:Ljava/lang/String;

.field nativeLibraryPathString:Ljava/lang/String;

.field private notLaunched:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field origPackage:Lcom/android/server/pm/PackageSettingBase;

.field permissionsFixed:Z

.field final realName:Ljava/lang/String;

.field resourcePath:Ljava/io/File;

.field resourcePathString:Ljava/lang/String;

.field signatures:Lcom/android/server/pm/PackageSignatures;

.field private stopped:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field timeStamp:J

.field uidError:Z

.field versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/pm/GrantedPermissions;-><init>(Lcom/android/server/pm/GrantedPermissions;)V

    .line 60
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 100
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 103
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 105
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 107
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 108
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 109
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 110
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 112
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->uidError:Z

    .line 114
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 116
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 117
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 118
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    .line 120
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    .line 121
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    .line 122
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    .line 123
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    .line 124
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 126
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->origPackage:Lcom/android/server/pm/PackageSettingBase;

    .line 128
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 129
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;II)V
    .locals 1
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    .line 87
    invoke-direct {p0, p7}, Lcom/android/server/pm/GrantedPermissions;-><init>(I)V

    .line 60
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 88
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->realName:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/pm/PackageSettingBase;->init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method private getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;
    .locals 2
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, setArray:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 224
    .local v0, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 226
    .restart local v0       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    :cond_0
    return-object v0
.end method


# virtual methods
.method addDisabledComponent(Ljava/lang/String;I)V
    .locals 2
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v0

    .line 233
    .local v0, disabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method addEnabledComponent(Ljava/lang/String;I)V
    .locals 2
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v0

    .line 238
    .local v0, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public copyFrom(Lcom/android/server/pm/PackageSettingBase;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 165
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 166
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 168
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 169
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->firstInstallTime:J

    .line 170
    iget-wide v0, p1, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageSettingBase;->lastUpdateTime:J

    .line 171
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 172
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->permissionsFixed:Z

    .line 173
    iget-boolean v0, p1, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageSettingBase;->haveGids:Z

    .line 174
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    .line 175
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    .line 176
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    .line 177
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    .line 178
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    .line 179
    iget v0, p1, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    iput v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 180
    return-void
.end method

.method disableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 250
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v1

    .line 251
    .local v1, disabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v2

    .line 252
    .local v2, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 253
    .local v0, changed:Z
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 254
    return v0
.end method

.method enableComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v1

    .line 243
    .local v1, disabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v2

    .line 244
    .local v2, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 245
    .local v0, changed:Z
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 246
    return v0
.end method

.method getCurrentEnabledStateLPr(Ljava/lang/String;I)I
    .locals 3
    .parameter "componentName"
    .parameter "userId"

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v0

    .line 267
    .local v0, disabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v1

    .line 268
    .local v1, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const/4 v2, 0x1

    .line 273
    :goto_0
    return v2

    .line 270
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    const/4 v2, 0x2

    goto :goto_0

    .line 273
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getDisabledComponents(I)Ljava/util/HashSet;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method getEnabled(I)I
    .locals 2
    .parameter "userId"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method getEnabledComponents(I)Ljava/util/HashSet;
    .locals 1
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public getInstallStatus()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    return v0
.end method

.method getInstallerPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getNotLaunched(I)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method getStopped(I)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method init(Ljava/io/File;Ljava/io/File;Ljava/lang/String;I)V
    .locals 1
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "nativeLibraryPathString"
    .parameter "pVersionCode"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->codePath:Ljava/io/File;

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->codePathString:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePath:Ljava/io/File;

    .line 136
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->resourcePathString:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/android/server/pm/PackageSettingBase;->nativeLibraryPathString:Ljava/lang/String;

    .line 138
    iput p4, p0, Lcom/android/server/pm/PackageSettingBase;->versionCode:I

    .line 139
    return-void
.end method

.method removeUser(I)V
    .locals 1
    .parameter "userId"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 279
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 280
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 283
    return-void
.end method

.method restoreComponentLPw(Ljava/lang/String;I)Z
    .locals 4
    .parameter "componentClassName"
    .parameter "userId"

    .prologue
    .line 258
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v1

    .line 259
    .local v1, disabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageSettingBase;->getComponentHashSet(Landroid/util/SparseArray;I)Ljava/util/HashSet;

    move-result-object v2

    .line 260
    .local v2, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 261
    .local v0, changed:Z
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 262
    return v0
.end method

.method setDisabledComponents(Ljava/util/HashSet;I)V
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->disabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    return-void
.end method

.method setEnabled(II)V
    .locals 1
    .parameter "state"
    .parameter "userId"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabled:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    return-void
.end method

.method setEnabledComponents(Ljava/util/HashSet;I)V
    .locals 1
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, components:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->enabledComponents:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    return-void
.end method

.method public setInstallStatus(I)V
    .locals 0
    .parameter "newStatus"

    .prologue
    .line 150
    iput p1, p0, Lcom/android/server/pm/PackageSettingBase;->installStatus:I

    .line 151
    return-void
.end method

.method public setInstallerPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/pm/PackageSettingBase;->installerPackageName:Ljava/lang/String;

    .line 143
    return-void
.end method

.method setNotLaunched(ZI)V
    .locals 2
    .parameter "stop"
    .parameter "userId"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->notLaunched:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    return-void
.end method

.method setStopped(ZI)V
    .locals 2
    .parameter "stop"
    .parameter "userId"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/pm/PackageSettingBase;->stopped:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "newStamp"

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/android/server/pm/PackageSettingBase;->timeStamp:J

    .line 159
    return-void
.end method
