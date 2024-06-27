from sqlalchemy import (
    Column,
    String,
    DateTime,
)
from sqlalchemy.orm import declarative_base
from sqlalchemy.sql import func

Base = declarative_base()

class Test(Base):
    __tablename__ = "tests"
    uuid = Column(String(36), primary_key=True, index=True)
    name = Column(String, nullable=False)
    created_at = Column(
        DateTime(timezone=True), nullable=False, server_default=func.now()
    )
    updated_at = Column(
        DateTime(timezone=True),
        nullable=False,
        default=func.now(),
        onupdate=func.now(),
    )
