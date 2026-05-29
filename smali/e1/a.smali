.class public final Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/a$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Le1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Le1/e;

.field public static final k:Ljava/util/Date;

.field public static final l:Ljava/util/Date;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Date;

.field public final e:Ljava/util/Date;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le1/e;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Le1/a;->k:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Le1/a;->l:Ljava/util/Date;

    sget-object v0, Le1/e;->g:Le1/e;

    sput-object v0, Le1/a;->j:Le1/e;

    new-instance v0, Le1/a$a;

    invoke-direct {v0}, Le1/a$a;-><init>()V

    sput-object v0, Le1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Le1/a;->d:Ljava/util/Date;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Le1/a;->f:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Le1/a;->c:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le1/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le1/e;->valueOf(Ljava/lang/String;)Le1/e;

    move-result-object v0

    iput-object v0, p0, Le1/a;->g:Le1/e;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Le1/a;->e:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le1/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Le1/e;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lr0/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lr0/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p3, v0}, Lr0/e;->j(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    sget-object p7, Le1/a;->k:Ljava/util/Date;

    :goto_0
    iput-object p7, p0, Le1/a;->d:Ljava/util/Date;

    new-instance p7, Ljava/util/HashSet;

    if-eqz p4, :cond_1

    invoke-direct {p7, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    invoke-direct {p7}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Le1/a;->f:Ljava/util/Set;

    new-instance p4, Ljava/util/HashSet;

    if-eqz p5, :cond_2

    invoke-direct {p4, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_2
    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    :goto_2
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p4

    iput-object p4, p0, Le1/a;->c:Ljava/util/Set;

    iput-object p1, p0, Le1/a;->h:Ljava/lang/String;

    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    sget-object p6, Le1/a;->j:Le1/e;

    :goto_3
    iput-object p6, p0, Le1/a;->g:Le1/e;

    if-eqz p8, :cond_4

    goto :goto_4

    :cond_4
    sget-object p8, Le1/a;->l:Ljava/util/Date;

    :goto_4
    iput-object p8, p0, Le1/a;->e:Ljava/util/Date;

    iput-object p2, p0, Le1/a;->b:Ljava/lang/String;

    iput-object p3, p0, Le1/a;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Le1/a;
    .registers 12

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const-string v0, "token"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/Date;

    const-string v0, "expires_at"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "declined_permissions"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v9, Ljava/util/Date;

    const-string v3, "last_refresh"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v9, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "source"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le1/e;->valueOf(Ljava/lang/String;)Le1/e;

    move-result-object v7

    new-instance v10, Le1/a;

    const-string v3, "application_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lh1/x;->u(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Lh1/x;->u(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Le1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Le1/e;Ljava/util/Date;Ljava/util/Date;)V

    return-object v10

    :cond_0
    new-instance p0, Le1/m;

    const-string v0, "Unknown AccessToken serialization format."

    invoke-direct {p0, v0}, Le1/m;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b()Le1/a;
    .registers 1

    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v0

    iget-object v0, v0, Le1/d;->b:Le1/a;

    return-object v0
.end method

.method public static c(Le1/a;)V
    .registers 3

    invoke-static {}, Le1/d;->a()Le1/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Le1/d;->c(Le1/a;Z)V

    return-void
.end method


# virtual methods
.method public final d()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->h:Ljava/lang/String;

    const-string v2, "token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "expires_at"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Le1/a;->f:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Le1/a;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v2, "declined_permissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "last_refresh"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->g:Le1/e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->b:Ljava/lang/String;

    const-string v2, "application_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Le1/a;->i:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Le1/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Le1/a;

    iget-object v0, p0, Le1/a;->d:Ljava/util/Date;

    iget-object v2, p1, Le1/a;->d:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le1/a;->f:Ljava/util/Set;

    iget-object v2, p1, Le1/a;->f:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le1/a;->c:Ljava/util/Set;

    iget-object v2, p1, Le1/a;->c:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le1/a;->h:Ljava/lang/String;

    iget-object v2, p1, Le1/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le1/a;->g:Le1/e;

    iget-object v2, p1, Le1/a;->g:Le1/e;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Le1/a;->e:Ljava/util/Date;

    iget-object v2, p1, Le1/a;->e:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le1/a;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Le1/a;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Le1/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Le1/a;->i:Ljava/lang/String;

    iget-object p1, p1, Le1/a;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Le1/a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le1/a;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le1/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le1/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le1/a;->g:Le1/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le1/a;->e:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le1/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Le1/a;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const-string v0, "{AccessToken"

    const-string v1, " token:"

    .line 1
    invoke-static {v0, v1}, La/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le1/a;->h:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Le1/r;->b()V

    const-string v1, "ACCESS_TOKEN_REMOVED"

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " permissions:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/a;->f:Ljava/util/Set;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le1/a;->f:Ljava/util/Set;

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    :goto_1
    const-string v1, "}"

    .line 5
    invoke-static {v0, v2, v1}, La/a;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Le1/a;->d:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Le1/a;->f:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Le1/a;->c:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Le1/a;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Le1/a;->g:Le1/e;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Le1/a;->e:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Le1/a;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Le1/a;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
