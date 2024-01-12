import axios, { AxiosResponse } from 'axios';
import { Category, MinimalCategory, ResponseArray } from '../types';

export function getCategories(page: number, size: number): Promise<ResponseArray<Category>> {
    return axios.get(`${process.env.REACT_APP_API}/categories?page=${page}&size=${size}`);
}

export function getCategory(id: string): Promise<AxiosResponse<Category>> {
    return axios.get(`${process.env.REACT_APP_API}/categories/${id}`);
}

export function createCategory(category: MinimalCategory): Promise<AxiosResponse<Category>> {
    return axios.post(`${process.env.REACT_APP_API}/categories`, category);
}

export function editCategory(category: MinimalCategory): Promise<AxiosResponse<Category>> {
    return axios.put(`${process.env.REACT_APP_API}/categories`, category);
}

export function deleteCategory(id: string): Promise<AxiosResponse<Category>> {
    return axios.delete(`${process.env.REACT_APP_API}/categories/${id}`);
}
