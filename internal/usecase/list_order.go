package usecase

import (
	"github.com/erickmanovei/goexpert_clean_architecture/internal/entity"
)

type ListOrderUseCase struct {
	OrderRepository entity.OrderRepositoryInterface
}

func NewListOrderUseCase(OrderRepository entity.OrderRepositoryInterface) *ListOrderUseCase {
	return &ListOrderUseCase{
		OrderRepository: OrderRepository,
	}
}

func (c *ListOrderUseCase) List() ([]entity.Order, error) {
	return c.OrderRepository.List()
}
