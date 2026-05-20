.class public interface abstract Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld1/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ld1/a;

    invoke-direct {v0}, Ld1/a;-><init>()V

    sput-object v0, Lx2/b;->a:Ld1/a;

    return-void
.end method


# virtual methods
.method public abstract a()[B
.end method

.method public abstract length()I
.end method
