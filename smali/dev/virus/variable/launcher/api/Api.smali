.class public Ldev/virus/variable/launcher/api/Api;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMON_GET_GAME_VERSION_STRING_NET:Ljava/lang/String;

.field private static final ON_ATTACK:Ljava/lang/String;

.field private static final ON_CHAT:Ljava/lang/String;

.field private static final ON_DRAW:Ljava/lang/String;

.field private static final ON_FAST_TICK:Ljava/lang/String;

.field private static final ON_LEVEL_TICK:Ljava/lang/String;

.field private static final ON_PLAYER_ADDED:Ljava/lang/String;

.field private static final ON_RECEIVE_SERVER_MESSAGE:Ljava/lang/String;

.field private static final ON_SCREEN_CHANGE:Ljava/lang/String;

.field private static final ON_SEND_PACKET:Ljava/lang/String;

.field private static final ON_SERVER_CONNECT:Ljava/lang/String;

.field private static final ON_SERVER_DISCONNECT:Ljava/lang/String;

.field private static final ON_TELEPORT:Ljava/lang/String;

.field private static final ON_USE_ITEM:Ljava/lang/String;

.field public static blackListedEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "cZWb 3YHx 6Om> H1k> "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_FAST_TICK:Ljava/lang/String;

    const-string v0, "c[cZ 3YG3 6[St Nmq> "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_LEVEL_TICK:Ljava/lang/String;

    const-string v0, "cCS3 3eit 6IZ> "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_ATTACK:Ljava/lang/String;

    const-string v0, "cc[[[3HYHB6GKS>R6Cm>"

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_PLAYER_ADDED:Ljava/lang/String;

    const-string v0, "cWWH 3dKW 63eu "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_USE_ITEM:Ljava/lang/String;

    const-string v0, "c[de 3XHB 6y:> Vmz> "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_TELEPORT:Ljava/lang/String;

    const-string v0, "c6dG 3Fn4 "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_DRAW:Ljava/lang/String;

    const-string v0, "c[Vb 3XH3 66GW Ulk1 "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_SEND_PACKET:Ljava/lang/String;

    const-string v0, "cZ[b[34XH36K6GVUmEv>"

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_SCREEN_CHANGE:Ljava/lang/String;

    const-string v0, "c6bG 3EH1 "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_CHAT:Ljava/lang/String;

    const-string v0, "cmWX[3bzWR6Ye{>T[nd>[mW3 XVzG O3Uo "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_RECEIVE_SERVER_MESSAGE:Ljava/lang/String;

    const-string v0, "c[[c[3YY3X6KK6OU3Ev1"

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_SERVER_CONNECT:Ljava/lang/String;

    const-string v0, "cYKk[3KFcX63b3OU[Y61[YOv "

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->ON_SERVER_DISCONNECT:Ljava/lang/String;

    const-string v0, "RYcbb33XXX:eW:6umXvoce[VUXFY4n:eKSWvi{z1"

    invoke-static {v0}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->COMMON_GET_GAME_VERSION_STRING_NET:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ldev/virus/variable/launcher/api/Api;->blackListedEntities:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Common_getGameVersionStringNet()V
    .registers 4

    .line 1
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    .line 3
    iget-object v2, v1, Lk2/d;->c:Ljava/lang/String;

    const-string v3, "dObC 3zY1 "

    .line 4
    invoke-static {v3}, Ld1/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ldev/virus/variable/launcher/api/Api;->COMMON_GET_GAME_VERSION_STRING_NET:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static native drawItem(IFFF)V
.end method

.method public static native drawText(Ljava/lang/String;FFFFFFF)V
.end method

.method public static native getGuiScale()I
.end method

.method public static native getLineLength(Ljava/lang/String;FZ)I
.end method

.method public static native getPing()I
.end method

.method public static native getScreenName()Ljava/lang/String;
.end method

.method public static isValidTarget(J)Z
    .registers 10

    const-string v0, "AntiBot"

    invoke-static {v0}, Lc2/c;->A(Ljava/lang/String;)Lc2/b;

    move-result-object v0

    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    check-cast v0, Ld2/d;

    .line 1
    invoke-virtual {v0}, Lc2/b;->isActive()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0, p1}, La3/r0;->B(J)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Ld2/d;->o:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInvisible(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, p0, p1, v2}, Ld2/d;->T(JI)V

    :cond_0
    iget-object v1, v0, Ld2/d;->p:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getCollisionSize(J)[F

    move-result-object v1

    const/4 v3, 0x0

    .line 5
    aget v3, v1, v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v3, v5

    if-ltz v7, :cond_1

    aget v1, v1, v2

    float-to-double v3, v1

    cmpg-double v1, v3, v5

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Ld2/d;->T(JI)V

    :cond_2
    iget-object v1, v0, Ld2/d;->q:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->getNameTag(J)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 8
    :cond_3
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->canShowNameTag(J)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, p0, p1, v1}, Ld2/d;->T(JI)V

    :cond_5
    iget-object v1, v0, Ld2/d;->t:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLocalPlayer;->getUniqueID()J

    move-result-wide v3

    invoke-static {v3, v4, p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->canAttack(JJ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->isImmobile(J)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const/4 v1, 0x5

    .line 12
    invoke-virtual {v0, p0, p1, v1}, Ld2/d;->T(JI)V

    :cond_7
    iget-object v1, v0, Ld2/d;->u:Li2/e;

    invoke-virtual {v1}, Li2/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativePlayer;->isInWall(J)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    .line 14
    invoke-virtual {v0, p0, p1, v1}, Ld2/d;->T(JI)V

    :cond_8
    sget-object v0, Ldev/virus/variable/launcher/api/Api;->blackListedEntities:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr v2, p0

    :cond_9
    return v2
.end method

.method public static onAttack(J)V
    .registers 8

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1, p0, p1}, Lc2/b;->C(J)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_ATTACK:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onChat(Ljava/lang/String;)V
    .registers 6

    # Debug log chat message
    const-string v0, "Chat"

    invoke-static {v0, p0}, Le2/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lc2/b;->L(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_CHAT:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onDraw()V
    .registers 4

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->F()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_DRAW:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onFastTick()V
    .registers 4

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->H()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_FAST_TICK:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onLevelTick()V
    .registers 4

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->J()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_LEVEL_TICK:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onPlayerAdded(J)V
    .registers 8

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_PLAYER_ADDED:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onReceiveServerMessage(Ljava/lang/String;)V
    .registers 6

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1, p0}, Lc2/b;->L(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_RECEIVE_SERVER_MESSAGE:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onScreenChange(Ljava/lang/String;)V
    .registers 6

    # Debug log screen change
    const-string v0, "Screen"

    invoke-static {v0, p0}, Le2/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->b:La2/d;

    if-nez v0, :cond_0

    const-string v0, "start_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lk2/c;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lx1/f;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lx1/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Ldev/virus/variable/app/MinecraftActivity;->splashView:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v1, Ldev/virus/variable/launcher/api/Api$SplashRemover;

    invoke-direct {v1, v0}, Ldev/virus/variable/launcher/api/Api$SplashRemover;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1
    :cond_1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_SCREEN_CHANGE:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static onSendPacket(Ljava/lang/String;I)V
    .registers 8

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1, p0, p1}, Lc2/b;->N(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_SEND_PACKET:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onServerConnect(Ljava/lang/String;I)V
    .registers 8

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_SERVER_CONNECT:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onServerDisconnect()V
    .registers 4

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1}, Lc2/b;->O()V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_SERVER_DISCONNECT:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onTeleport(JFFF)V
    .registers 13

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lc2/b;

    move-wide v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lc2/b;->P(JFFF)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_TELEPORT:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static onUseItem(IIIIII)V
    .registers 12

    .line 1
    sget-object v0, Lc2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/b;

    invoke-virtual {v1, p0, p1, p2}, Lc2/b;->Q(III)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lk2/c;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    sget-object v2, Ldev/virus/variable/launcher/api/Api;->ON_USE_ITEM:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lk2/c;->a(Lk2/d;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static native preventDefault()V
.end method

.method public static native sendEnabledStatus(IZ)V
.end method

.method public static native sendFloatValue(IF)V
.end method

.method public static native sendStringValue(ILjava/lang/String;)V
.end method

.method public static native testMethod(Ljava/lang/String;)V
.end method
